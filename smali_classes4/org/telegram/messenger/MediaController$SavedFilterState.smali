.class public Lorg/telegram/messenger/MediaController$SavedFilterState;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedFilterState"
.end annotation


# instance fields
.field public blurAngle:F

.field public blurExcludeBlurSize:F

.field public blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field public blurExcludeSize:F

.field public blurType:I

.field public contrastValue:F

.field public curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field public enhanceValue:F

.field public exposureValue:F

.field public fadeValue:F

.field public grainValue:F

.field public highlightsValue:F

.field public saturationValue:F

.field public shadowsValue:F

.field public sharpenValue:F

.field public softenSkinValue:F

.field public tintHighlightsColor:I

.field public tintShadowsColor:I

.field public vignetteValue:F

.field public warmthValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .line 332
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 333
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 334
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 335
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 336
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 337
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 338
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 339
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 342
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 343
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 344
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 345
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 347
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 300
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    .line 301
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    .line 302
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    .line 303
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    .line 304
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    .line 305
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    .line 306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    .line 307
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    .line 308
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    .line 309
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    .line 310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    .line 311
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    .line 312
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    .line 313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    .line 314
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    .line 315
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 316
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    .line 317
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x56730bcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 327
    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    .line 328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 271
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 272
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 273
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 274
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 275
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 276
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 277
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 278
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 279
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 280
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 281
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 282
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 283
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 284
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 285
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 287
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 288
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-nez v0, :cond_0

    const v0, 0x56730bcc

    .line 289
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_0

    :cond_0
    const v0, -0x21524111

    .line 291
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 295
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 296
    iget v0, p0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    return-void
.end method
