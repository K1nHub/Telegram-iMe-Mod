.class public Lorg/telegram/messenger/MediaController$CropState;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropState"
.end annotation


# instance fields
.field public cropPh:F

.field public cropPw:F

.field public cropPx:F

.field public cropPy:F

.field public cropRotate:F

.field public cropScale:F

.field public freeform:Z

.field public height:I

.field public initied:Z

.field public lockedAspectRatio:F

.field public matrix:Landroid/graphics/Matrix;

.field public mirrored:Z

.field public scale:F

.field public stateScale:F

.field public transformHeight:I

.field public transformRotation:I

.field public transformWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 261
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 263
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 264
    iput v0, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController$CropState;->clone()Lorg/telegram/messenger/MediaController$CropState;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/messenger/MediaController$CropState;
    .locals 2

    .line 282
    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    .line 284
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 285
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    .line 286
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    .line 287
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    .line 288
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 289
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    .line 290
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 291
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 292
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    .line 293
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    .line 295
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    .line 296
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    .line 297
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    .line 298
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->width:I

    .line 299
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->height:I

    .line 300
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    .line 301
    iget v1, p0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    .line 303
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    return-object v0
.end method
