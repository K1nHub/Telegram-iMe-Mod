.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
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

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 274
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    new-array v6, v5, [Lorg/telegram/ui/Components/RadioButton;

    .line 108
    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    move-object/from16 v6, p9

    .line 275
    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 277
    instance-of v6, v1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    move-object/from16 v6, p6

    .line 278
    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    move/from16 v6, p8

    .line 279
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    const/4 v6, 0x0

    .line 281
    iput v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    const/4 v9, 0x0

    add-int/2addr v9, v8

    .line 283
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 285
    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    .line 287
    :cond_1
    :goto_0
    iget v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    add-int/lit8 v9, v10, 0x1

    .line 288
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    add-int/lit8 v10, v9, 0x1

    .line 289
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    add-int/lit8 v9, v10, 0x1

    .line 290
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    add-int/lit8 v10, v9, 0x1

    .line 291
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    add-int/lit8 v9, v10, 0x1

    .line 292
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    add-int/lit8 v10, v9, 0x1

    .line 293
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    add-int/lit8 v9, v10, 0x1

    .line 294
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    add-int/lit8 v10, v9, 0x1

    .line 295
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    add-int/lit8 v4, v10, 0x1

    .line 297
    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    :cond_2
    if-nez v2, :cond_3

    .line 300
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    goto :goto_1

    .line 302
    :cond_3
    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    .line 304
    :goto_1
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    add-int/lit8 v4, v10, 0x1

    .line 305
    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    add-int/lit8 v10, v4, 0x1

    .line 306
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    if-eqz v3, :cond_4

    .line 309
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    .line 310
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    .line 311
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    .line 312
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    .line 313
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    .line 314
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    .line 315
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    .line 316
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    .line 317
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    .line 318
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    .line 319
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    .line 320
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    .line 321
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    .line 322
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 323
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    .line 324
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 325
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 326
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 327
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 328
    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 329
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_2

    .line 331
    :cond_4
    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v3}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    const v3, 0x3eb33333    # 0.35f

    .line 332
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 333
    new-instance v3, Lorg/telegram/ui/Components/Point;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    const v3, 0x3e19999a    # 0.15f

    .line 334
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    const v3, 0x3fc90fdb

    .line 335
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    :goto_2
    move-object/from16 v3, p3

    .line 337
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move/from16 v3, p4

    .line 338
    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    const/16 v3, 0x33

    if-eqz v2, :cond_5

    .line 341
    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    .line 342
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_3

    .line 347
    :cond_5
    iput-boolean v8, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    .line 348
    new-instance v4, Landroid/view/TextureView;

    invoke-direct {v4, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    .line 349
    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setVisibility(I)V

    .line 351
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v10, Lorg/telegram/ui/Components/PhotoFilterView$1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v10}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 391
    :goto_3
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 392
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 393
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v10, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    .line 404
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v4, v1, v10}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 405
    new-instance v10, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    .line 410
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v10, 0xba

    const/16 v11, 0x53

    .line 414
    invoke-static {v7, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, -0x1000000

    .line 417
    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 418
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v12, 0x30

    invoke-static {v7, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    .line 421
    invoke-virtual {v10, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 424
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v14, -0xc2c2c3

    invoke-static {v14, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v15, 0x14

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v10, v5, v6, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v10, "Cancel"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 428
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    invoke-static {v10, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    .line 431
    invoke-virtual {v5, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 432
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string v11, "dialogFloatingButton"

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v14, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v5, v11, v6, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 436
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->Done:I

    const-string v12, "Done"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v9, 0x35

    invoke-static {v10, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-static {v10, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    .line 444
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 445
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_photo_settings:I

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const-string v11, "dialogFloatingButton"

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 447
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const v9, 0x40ffffff    # 7.9999995f

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/16 v11, 0x38

    const/16 v12, 0x30

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    .line 458
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 459
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_photo_blur:I

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v12, 0x30

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_6

    .line 470
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :cond_6
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    .line 474
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 475
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_photo_curve:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    const/16 v4, 0x30

    invoke-static {v11, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 487
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 489
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 492
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 493
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x78

    invoke-static {v7, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    .line 496
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/16 v16, -0x1

    const/16 v17, 0x4e

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x28

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 500
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 501
    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-static {v10, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v6

    :goto_4
    const/4 v4, 0x4

    if-ge v3, v4, :cond_c

    .line 504
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 507
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    new-instance v9, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v9, v5, v3

    .line 508
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v5, v5, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 509
    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v5, v5, v3

    const/16 v9, 0x31

    const/16 v10, 0x1e

    invoke-static {v10, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41400000    # 12.0f

    .line 512
    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v9, 0x10

    .line 513
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v3, :cond_7

    .line 515
    sget v9, Lorg/telegram/messenger/R$string;->CurvesAll:I

    const-string v11, "CurvesAll"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 516
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v9, v9, v3

    invoke-virtual {v9, v7, v7}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto/16 :goto_5

    :cond_7
    if-ne v3, v8, :cond_8

    .line 520
    sget v9, Lorg/telegram/messenger/R$string;->CurvesRed:I

    const-string v11, "CurvesRed"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 521
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, -0x19b2b3

    .line 522
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v11, v11, v3

    invoke-virtual {v11, v9, v9}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x2

    if-ne v3, v9, :cond_9

    .line 525
    sget v9, Lorg/telegram/messenger/R$string;->CurvesGreen:I

    const-string v11, "CurvesGreen"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 526
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, -0xa544a1

    .line 527
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v11, v11, v3

    invoke-virtual {v11, v9, v9}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x3

    if-ne v3, v9, :cond_a

    .line 530
    sget v9, Lorg/telegram/messenger/R$string;->CurvesBlue:I

    const-string v11, "CurvesBlue"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, -0xc25212

    .line 532
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v11, v11, v3

    invoke-virtual {v11, v9, v9}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :cond_a
    :goto_5
    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/16 v19, 0x0

    const/16 v20, 0x26

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 535
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_b

    move/from16 v18, v6

    goto :goto_6

    :cond_b
    move/from16 v18, v10

    :goto_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 537
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v5, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 548
    :cond_c
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    .line 549
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 550
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/16 v9, 0x118

    const/16 v10, 0x3c

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x28

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 553
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 554
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 555
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BlurOff:I

    const-string v5, "BlurOff"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v5, 0x50

    const/16 v6, 0x3c

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 568
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 570
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 571
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->BlurRadial:I

    const-string v5, "BlurRadial"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/16 v9, 0x50

    const/16 v10, 0x50

    const/16 v11, 0x33

    const/16 v12, 0x64

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 584
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 585
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 587
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BlurLinear:I

    const-string v3, "BlurLinear"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/16 v3, 0x50

    const/16 v4, 0x50

    const/16 v5, 0x33

    const/16 v6, 0xc8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 601
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v1, :cond_e

    .line 602
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v1, :cond_d

    .line 603
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 605
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_e
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method private fixLayout(II)V
    .locals 12

    const/16 v0, 0x1c

    .line 796
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    const/16 v1, 0xd6

    .line 797
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v5, :cond_0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    add-int/2addr v1, v5

    sub-int/2addr p2, v1

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 802
    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v6, v5, 0x168

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_2

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 806
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 807
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_2

    .line 803
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 804
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    .line 810
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 811
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

    if-lez v10, :cond_4

    mul-float/2addr v1, v9

    float-to-double v9, v1

    .line 817
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-float v1, v1

    move v5, v8

    goto :goto_3

    :cond_4
    mul-float/2addr v5, v7

    float-to-double v9, v5

    .line 820
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

    .line 823
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

    .line 824
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    if-lt v2, v3, :cond_5

    iget-boolean v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v7, :cond_5

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_5
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

    .line 828
    iget-boolean v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v8, :cond_6

    .line 829
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 830
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 831
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 832
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 833
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 835
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v6, v6

    if-lt v2, v3, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v2, :cond_7

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    sub-int/2addr v7, v2

    int-to-float v2, v7

    int-to-float v1, v1

    int-to-float v3, v5

    invoke-virtual {v8, v6, v2, v1, v3}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    .line 837
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    .line 838
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x26

    .line 839
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 841
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 842
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 844
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x56

    .line 845
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-ge p2, p1, :cond_8

    .line 848
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    .line 849
    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_8
    const/4 p1, -0x1

    .line 851
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 852
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_9
    :goto_6
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    .line 344
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/Point;FFF)V
    .locals 0

    .line 395
    iput p3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    .line 396
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 397
    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    .line 398
    iput p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 400
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 450
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "dialogFloatingButton"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 454
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    .line 463
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "dialogFloatingButton"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 466
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x2

    .line 479
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "dialogFloatingButton"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 483
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 5

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput p1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 542
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

    .line 544
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 559
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 560
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 574
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 575
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    .line 590
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    .line 591
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private setShowOriginal(Z)V
    .locals 1

    .line 727
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 730
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    .line 731
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_1
    return-void
.end method

.method private updateSelectedBlurType()V
    .locals 8

    .line 626
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, -0x1

    const-string v2, "dialogFloatingButton"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 628
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 629
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 642
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 643
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
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

    .line 656
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 860
    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    if-ne p2, p4, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 862
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/TextureView;->getTop()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 863
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 864
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 865
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return p3
.end method

.method public fillAndGetCurveBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->fillBuffer()V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 792
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

    .line 980
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method public getBlurControl()Landroid/view/View;
    .locals 1

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method public getBlurExcludeBlurSize()F
    .locals 1

    .line 975
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method public getBlurExcludePoint()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method public getBlurExcludeSize()F
    .locals 1

    .line 970
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method public getBlurType()I
    .locals 1

    .line 965
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContrastValue()F
    .locals 2

    .line 899
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurveControl()Landroid/view/View;
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEnhanceValue()F
    .locals 2

    .line 889
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getExposureValue()F
    .locals 2

    .line 894
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFadeValue()F
    .locals 2

    .line 924
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getGrainValue()F
    .locals 2

    .line 919
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHighlightsValue()F
    .locals 2

    .line 884
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSaturationValue()F
    .locals 2

    .line 946
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

    .line 663
    new-instance v0, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    .line 664
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 665
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 666
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 667
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 668
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 669
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 670
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 671
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 672
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 673
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 674
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 675
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 676
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 677
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 678
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 679
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    .line 680
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 682
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 683
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    .line 684
    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    return-object v0
.end method

.method public getShadowsValue()F
    .locals 2

    .line 879
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

    .line 914
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

    .line 929
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTintHighlightsColor()I
    .locals 1

    .line 955
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method public getTintHighlightsIntensityValue()F
    .locals 1

    .line 935
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

    .line 960
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method public getTintShadowsIntensityValue()F
    .locals 1

    .line 941
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

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getVignetteValue()F
    .locals 2

    .line 909
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWarmthValue()F
    .locals 2

    .line 904
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public hasChanges()Z
    .locals 5

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 689
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

    .line 703
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 705
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

    .line 706
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

    .line 786
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 873
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    .line 874
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 721
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

    .line 722
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_1

    .line 712
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    .line 713
    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->containsPoint(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 714
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_1

    .line 717
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

    .line 718
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public shouldDrawCurvesPass()Z
    .locals 1

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowOriginal()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    return v0
.end method

.method public shutdown()V
    .locals 3

    .line 769
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    .line 772
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    .line 774
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    .line 776
    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 777
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v2, :cond_2

    .line 778
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_0

    .line 780
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchMode()V
    .locals 6

    .line 737
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 750
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 753
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    .line 763
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
    .locals 5

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string v1, "dialogFloatingButton"

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 619
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 622
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method
