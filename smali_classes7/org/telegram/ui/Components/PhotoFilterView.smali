.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;,
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
        Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    }
.end annotation


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurAngle:F

.field private blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private blurExcludeBlurSize:F

.field private blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field private blurExcludeSize:F

.field private blurItem:Landroid/widget/ImageView;

.field private blurLayout:Landroid/widget/FrameLayout;

.field private blurLinearButton:Landroid/widget/TextView;

.field private blurOffButton:Landroid/widget/TextView;

.field private blurRadialButton:Landroid/widget/TextView;

.field private blurType:I

.field private cancelTextView:Landroid/widget/TextView;

.field private contrastTool:I

.field private contrastValue:F

.field private curveItem:Landroid/widget/ImageView;

.field private curveLayout:Landroid/widget/FrameLayout;

.field private curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

.field private curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private doneTextView:Landroid/widget/TextView;

.field private eglThread:Lorg/telegram/ui/Components/FilterGLThread;

.field private enhanceTool:I

.field private enhanceValue:F

.field private exposureTool:I

.field private exposureValue:F

.field private fadeTool:I

.field private fadeValue:F

.field private grainTool:I

.field private grainValue:F

.field private highlightsTool:I

.field private highlightsValue:F

.field private inBubbleMode:Z

.field private isMirrored:Z

.field private lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field private orientation:I

.field private ownLayout:Z

.field private ownsTextureView:Z

.field private paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rowsCount:I

.field private saturationTool:I

.field private saturationValue:F

.field private selectedTool:I

.field private shadowsTool:I

.field private shadowsValue:F

.field private sharpenTool:I

.field private sharpenValue:F

.field private showOriginal:Z

.field private softenSkinTool:I

.field private softenSkinValue:F

.field private textureView:Landroid/view/TextureView;

.field private tintHighlightsColor:I

.field private tintHighlightsTool:I

.field private tintShadowsColor:I

.field private tintShadowsTool:I

.field private toolsView:Landroid/widget/FrameLayout;

.field private tuneItem:Landroid/widget/ImageView;

.field private vignetteTool:I

.field private vignetteValue:F

.field private warmthTool:I

.field private warmthValue:F


# direct methods
.method public static synthetic $r8$lambda$AAjp9rbnsUw8tN4hNxe43Bd_GGk(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E33gxsLr1bFb2cfvLoCrPut1UWo(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GCGCchbOZkYFd7FKnH3pWJ5bURo(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$1(Lorg/telegram/ui/Components/Point;FFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$KvuUyjS3o6sxpmVQlMBz4wjgbsE(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$L1-qn-kj-rboPLqJmUeYGRY74A4(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBKBy8Yjpk6c7p81zuBtyfNt1Ew(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q8bSXenPFKmAiLet4nYY0FG6QUI(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$0(Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v62bzBhXcMHOnVhW5Ioiq6WiHJw(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zH0YZYnMNX3qKUvaCWEop484aQo(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNRLY59SFYMJR9OCVQC_Z36k4Hw(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p9

    .line 320
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x4

    new-array v7, v6, [Lorg/telegram/ui/Components/RadioButton;

    .line 124
    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    .line 321
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    move-object/from16 v7, p10

    .line 322
    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 324
    instance-of v7, v1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    move-object/from16 v7, p6

    .line 325
    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    move/from16 v7, p8

    .line 326
    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    const/4 v7, 0x0

    .line 328
    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    const/4 v10, 0x0

    add-int/2addr v10, v9

    .line 330
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 332
    iput v8, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    .line 334
    :cond_1
    :goto_0
    iget v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    add-int/lit8 v10, v11, 0x1

    .line 335
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    add-int/lit8 v11, v10, 0x1

    .line 336
    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    add-int/lit8 v10, v11, 0x1

    .line 337
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    add-int/lit8 v11, v10, 0x1

    .line 338
    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    add-int/lit8 v10, v11, 0x1

    .line 339
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    add-int/lit8 v11, v10, 0x1

    .line 340
    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    add-int/lit8 v10, v11, 0x1

    .line 341
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    add-int/lit8 v11, v10, 0x1

    .line 342
    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    add-int/lit8 v4, v11, 0x1

    .line 344
    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    :cond_2
    if-nez v2, :cond_3

    .line 347
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    goto :goto_1

    .line 349
    :cond_3
    iput v8, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    .line 351
    :goto_1
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    add-int/lit8 v4, v11, 0x1

    .line 352
    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    add-int/lit8 v11, v4, 0x1

    .line 353
    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    if-eqz v3, :cond_4

    .line 356
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    .line 357
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    .line 358
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    .line 359
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    .line 360
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    .line 361
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    .line 362
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    .line 363
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    .line 364
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    .line 365
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    .line 366
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    .line 367
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    .line 368
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    .line 369
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 370
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    .line 371
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 372
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 373
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 374
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 375
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 376
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_2

    .line 378
    :cond_4
    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v3}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    const v3, 0x3eb33333    # 0.35f

    .line 379
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 380
    new-instance v3, Lorg/telegram/ui/Components/Point;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    const v3, 0x3e19999a    # 0.15f

    .line 381
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    const v3, 0x3fc90fdb

    .line 382
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    :goto_2
    move-object/from16 v3, p3

    .line 384
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move/from16 v3, p4

    .line 385
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    const/16 v3, 0x33

    if-eqz v2, :cond_5

    .line 388
    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    .line 389
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_3

    .line 394
    :cond_5
    iput-boolean v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    .line 395
    new-instance v4, Landroid/view/TextureView;

    invoke-direct {v4, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    if-eqz v5, :cond_6

    .line 397
    invoke-static {v8, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v4, v6}, Landroid/view/TextureView;->setVisibility(I)V

    .line 400
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v11, Lorg/telegram/ui/Components/PhotoFilterView$1;

    invoke-direct {v11, v0, v5}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Z)V

    invoke-virtual {v4, v11}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 440
    :goto_3
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 441
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v5, :cond_7

    .line 443
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-static {v8, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v11, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    .line 455
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v4, v1, v11}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 456
    new-instance v11, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    .line 461
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_8

    .line 463
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-static {v8, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    :cond_8
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_9

    const/16 v12, 0x28

    goto :goto_4

    :cond_9
    move v12, v7

    :goto_4
    add-int/lit16 v12, v12, 0xba

    const/16 v13, 0x53

    .line 467
    invoke-static {v8, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v12, -0x1000000

    .line 470
    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 471
    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v14, 0x30

    invoke-static {v8, v14, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    .line 474
    invoke-virtual {v12, v9, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 475
    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 477
    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v11, -0xc2c2c3

    invoke-static {v11, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v12, 0x14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v6, v10, v7, v14, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 479
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v14, "Cancel"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 481
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    invoke-static {v10, v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v6, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    .line 484
    invoke-virtual {v6, v9, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 485
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v11, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v6, v11, v7, v14, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 489
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->Done:I

    const-string v14, "Done"

    invoke-static {v14, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v11, 0x35

    invoke-static {v10, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 494
    invoke-static {v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    .line 497
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 498
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_photo_settings:I

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 500
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const v11, 0x40ffffff    # 7.9999995f

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/16 v13, 0x38

    const/16 v14, 0x30

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    .line 511
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 512
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_photo_blur:I

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v14, 0x30

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_a

    .line 523
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    :cond_a
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    .line 527
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_photo_curve:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    const/16 v4, 0x30

    invoke-static {v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 540
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 541
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 542
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 543
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 544
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 545
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 546
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v5, :cond_b

    const/16 v6, 0x3c

    goto :goto_5

    :cond_b
    move v6, v7

    :goto_5
    add-int/lit8 v6, v6, 0x78

    invoke-static {v8, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    .line 549
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 550
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v18, 0x4e

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-nez v5, :cond_c

    const/16 v4, 0x28

    goto :goto_6

    :cond_c
    move v4, v7

    :goto_6
    const/16 v6, 0x28

    add-int/lit8 v21, v4, 0x28

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 553
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 554
    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-static {v10, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v7

    :goto_7
    const/4 v4, 0x4

    if-ge v3, v4, :cond_12

    .line 557
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 560
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    new-instance v10, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v10, v6, v3

    .line 561
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v6, v6, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 562
    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v6, v6, v3

    const/16 v10, 0x31

    const/16 v11, 0x1e

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 565
    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v10, 0x10

    .line 566
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v3, :cond_d

    .line 568
    sget v10, Lorg/telegram/messenger/R$string;->CurvesAll:I

    const-string v13, "CurvesAll"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v10, v10, v3

    invoke-virtual {v10, v8, v8}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto/16 :goto_8

    :cond_d
    if-ne v3, v9, :cond_e

    .line 573
    sget v10, Lorg/telegram/messenger/R$string;->CurvesRed:I

    const-string v13, "CurvesRed"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 574
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0x19b2b3

    .line 575
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v13, v13, v3

    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_8

    :cond_e
    const/4 v10, 0x2

    if-ne v3, v10, :cond_f

    .line 578
    sget v10, Lorg/telegram/messenger/R$string;->CurvesGreen:I

    const-string v13, "CurvesGreen"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 579
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0xa544a1

    .line 580
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v13, v13, v3

    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_8

    :cond_f
    const/4 v10, 0x3

    if-ne v3, v10, :cond_10

    .line 583
    sget v10, Lorg/telegram/messenger/R$string;->CurvesBlue:I

    const-string v13, "CurvesBlue"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 584
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, -0xc25212

    .line 585
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v13, v13, v3

    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :cond_10
    :goto_8
    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/16 v21, 0x26

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 588
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_11

    move/from16 v19, v7

    goto :goto_9

    :cond_11
    move/from16 v19, v11

    :goto_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 590
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    new-instance v6, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 601
    :cond_12
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    .line 602
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x118

    const/16 v11, 0x3c

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v4, 0x28

    if-nez v5, :cond_13

    const/16 v7, 0x28

    :cond_13
    add-int/lit8 v14, v7, 0x28

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 606
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 607
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 608
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 609
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BlurOff:I

    const-string v6, "BlurOff"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v6, 0x50

    const/16 v7, 0x3c

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 621
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 622
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 623
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 624
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BlurRadial:I

    const-string v6, "BlurRadial"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/16 v10, 0x50

    const/16 v11, 0x50

    const/16 v12, 0x33

    const/16 v13, 0x64

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 637
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 638
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 639
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 640
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BlurLinear:I

    const-string v3, "BlurLinear"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/16 v3, 0x50

    const/16 v4, 0x50

    const/16 v6, 0x33

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v10

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 654
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v1, :cond_15

    if-eqz v5, :cond_15

    .line 655
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v1, :cond_14

    .line 656
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 658
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method private fixLayout(II)V
    .locals 12

    .line 902
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1c

    .line 905
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    const/16 v1, 0xd6

    .line 906
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v5, :cond_1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int/2addr v1, v5

    sub-int/2addr p2, v1

    .line 910
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 911
    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v6, v5, 0x168

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 915
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 916
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_2

    .line 912
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 913
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    .line 919
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 920
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    :goto_2
    int-to-float v5, v5

    int-to-float v6, p1

    div-float v7, v6, v1

    int-to-float v8, p2

    div-float v9, v8, v5

    cmpl-float v10, v7, v9

    if-lez v10, :cond_5

    mul-float/2addr v1, v9

    float-to-double v9, v1

    .line 926
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-float v1, v1

    move v5, v8

    goto :goto_3

    :cond_5
    mul-float/2addr v5, v7

    float-to-double v9, v5

    .line 929
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-float v1, v1

    move v5, v1

    move v1, v6

    :goto_3
    sub-float/2addr v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/16 v9, 0xe

    .line 932
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    sub-float/2addr v8, v5

    div-float/2addr v8, v7

    .line 933
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    if-lt v2, v3, :cond_6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v7, :cond_6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    int-to-float v7, v7

    add-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    float-to-int v1, v1

    float-to-int v5, v5

    .line 937
    iget-boolean v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v8, :cond_7

    .line 938
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 939
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 940
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 941
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 942
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 945
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v6, v6

    if-lt v2, v3, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v2, :cond_8

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    sub-int/2addr v7, v2

    int-to-float v2, v7

    int-to-float v1, v1

    int-to-float v3, v5

    invoke-virtual {v8, v6, v2, v1, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    .line 947
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x26

    .line 950
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 952
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 953
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 955
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x56

    .line 956
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-ge p2, p1, :cond_9

    .line 959
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    .line 960
    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_9
    const/4 p1, -0x1

    .line 962
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 963
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_a
    :goto_6
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    .line 391
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/Point;FFF)V
    .locals 0

    .line 446
    iput p3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 447
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 448
    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 449
    iput p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 451
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 458
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 503
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 507
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    .line 516
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 519
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x2

    .line 532
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 536
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 5

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput p1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 595
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 612
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 627
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 628
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 632
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    .line 643
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 644
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 648
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private setShowOriginal(Z)V
    .locals 1

    .line 828
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 831
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_1
    return-void
.end method

.method private updateSelectedBlurType()V
    .locals 8

    .line 679
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 682
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 695
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 696
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 970
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 971
    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    if-ne p2, p4, :cond_0

    .line 972
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 973
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/TextureView;->getTop()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 974
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 975
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 976
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 977
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return p3
.end method

.method public fillAndGetCurveBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->fillBuffer()V

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBlurAngle()F
    .locals 1

    .line 1091
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method public getBlurControl()Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 1

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method public getBlurExcludeBlurSize()F
    .locals 1

    .line 1086
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method public getBlurExcludePoint()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method public getBlurExcludeSize()F
    .locals 1

    .line 1081
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method public getBlurType()I
    .locals 1

    .line 1076
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContrastValue()F
    .locals 2

    .line 1010
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurveControl()Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEnhanceValue()F
    .locals 2

    .line 1000
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getExposureValue()F
    .locals 2

    .line 1005
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFadeValue()F
    .locals 2

    .line 1035
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getGrainValue()F
    .locals 2

    .line 1030
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHighlightsValue()F
    .locals 2

    .line 995
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMyTextureView()Landroid/view/TextureView;
    .locals 1

    .line 887
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaturationValue()F
    .locals 2

    .line 1057
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getSavedFilterState()Lorg/telegram/messenger/MediaController$SavedFilterState;
    .locals 2

    .line 716
    new-instance v0, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    .line 717
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 718
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 719
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 720
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 721
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 722
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 723
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 724
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 725
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 726
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 727
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 728
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 729
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 730
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 731
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 732
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 733
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 735
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 736
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    .line 737
    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    return-object v0
.end method

.method public getShadowsValue()F
    .locals 2

    .line 990
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSharpenValue()F
    .locals 2

    .line 1025
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    const v1, 0x3de147ae    # 0.11f

    add-float/2addr v0, v1

    return v0
.end method

.method public getSoftenSkinValue()F
    .locals 2

    .line 1040
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTintHighlightsColor()I
    .locals 1

    .line 1066
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method public getTintHighlightsIntensityValue()F
    .locals 1

    .line 1046
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method public getTintShadowsColor()I
    .locals 1

    .line 1071
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method public getTintShadowsIntensityValue()F
    .locals 1

    .line 1052
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getVignetteValue()F
    .locals 2

    .line 1020
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWarmthValue()F
    .locals 2

    .line 1015
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public hasChanges()Z
    .locals 5

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 742
    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 756
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 758
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 759
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public init()V
    .locals 2

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 984
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    .line 985
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    :cond_1
    const/4 p1, 0x0

    .line 822
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_1

    .line 812
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    .line 813
    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->containsPoint(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 814
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_1

    .line 817
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    .line 818
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    :cond_4
    :goto_1
    return v1
.end method

.method public setEnhanceValue(F)V
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1140
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 p1, 0x0

    move v0, p1

    .line 1141
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1142
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1143
    instance-of v2, v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    if-ne v2, v3, :cond_0

    .line 1144
    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    sget v0, Lorg/telegram/messenger/R$string;->Enhance:I

    const-string v2, "Enhance"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v2, p1, v3}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1149
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_2
    return-void
.end method

.method public shouldDrawCurvesPass()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowOriginal()Z
    .locals 1

    .line 1101
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    return v0
.end method

.method public shutdown()V
    .locals 3

    .line 870
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    .line 873
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    .line 875
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 876
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    .line 877
    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 878
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v2, :cond_2

    .line 879
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_3

    .line 881
    invoke-static {v2}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchMode()V
    .locals 6

    .line 838
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 851
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 854
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    .line 864
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v4, v4, v0

    if-nez v0, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 664
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 672
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 675
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method
