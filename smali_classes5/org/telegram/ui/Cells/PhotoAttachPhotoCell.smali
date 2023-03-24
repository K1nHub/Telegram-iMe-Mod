.class public Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
.super Landroid/widget/FrameLayout;
.source "PhotoAttachPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;
    }
.end annotation


# static fields
.field private static rect:Landroid/graphics/Rect;


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkFrame:Landroid/widget/FrameLayout;

.field private container:Landroid/widget/FrameLayout;

.field private crossfadeDuration:Ljava/lang/Float;

.field private delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

.field private hasSpoiler:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private imageViewCrossfadeProgress:F

.field private imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

.field private isLast:Z

.field private isVertical:Z

.field private itemSize:I

.field private itemSizeChanged:Z

.field private path:Landroid/graphics/Path;

.field private photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private pressed:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

.field private spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private spoilerMaxRadius:F

.field private spoilerRevealProgress:F

.field private spoilerRevealX:F

.field private spoilerRevealY:F

.field private videoInfoContainer:Landroid/widget/FrameLayout;

.field private videoTextView:Landroid/widget/TextView;

.field private zoomOnSelect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->zoomOnSelect:Z

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 91
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->path:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    iput v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    .line 107
    iput-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 111
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    const/16 v3, 0x50

    .line 112
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v4, -0x1

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ea66666    # 0.325f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 116
    new-instance v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 169
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setBlurAllowed(Z)V

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    .line 182
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v6, v1, v5, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/16 v8, 0x53

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 187
    sget v5, Lorg/telegram/messenger/R$drawable;->play_mini_video:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v6, -0x2

    const/16 v7, 0x13

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 194
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 195
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v8, 0x41500000    # 13.0f

    const v9, -0x40cccccd    # -0.7f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x18

    invoke-direct {v2, p1, v4, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x7

    .line 198
    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 199
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const-string v2, "chat_attachCheckBoxBackground"

    const-string v4, "chat_attachPhotoBackground"

    const-string v5, "chat_attachCheckBoxCheck"

    invoke-virtual {p2, v2, v4, v5}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    const/16 v6, 0x33

    const/16 v7, 0x34

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 204
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x2a

    const/16 v5, 0x2a

    const/16 v7, 0x26

    const/4 v8, 0x0

    .line 205
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Ljava/lang/Float;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Path;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealX:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealY:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerMaxRadius:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)F
    .locals 0

    .line 62
    iget p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;F)F
    .locals 0

    .line 62
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public callDelegate()V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    return-void
.end method

.method public clearAnimation()V
    .locals 4

    .line 484
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    const v2, 0x3f4978d5    # 0.787f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getCheckFrame()Landroid/widget/FrameLayout;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getVideoInfoContainer()Landroid/view/View;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$SearchImage;->getPathToAttach()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    const-string v1, "chat_attachPhotoBackground"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 540
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_0

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v4, "AttachVideo"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 546
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    const-string v3, "AttachPhoto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    const-string v2, ". "

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-wide v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 556
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 557
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_open_photo:I

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 289
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 290
    iget p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 292
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isVertical:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x50

    if-eqz p1, :cond_2

    .line 293
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 295
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 500
    sget-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 502
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 505
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 508
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 509
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 510
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 514
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 515
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 517
    sget-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 518
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 519
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 524
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_4
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10

    .line 563
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_open_photo:I

    if-ne p1, v0, :cond_0

    .line 564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, -0x1

    int-to-float v8, v1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 568
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setChecked(IZZ)V
    .locals 8

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(IZZ)V

    .line 400
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    if-eqz p1, :cond_6

    .line 401
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    :cond_0
    const p1, 0x3f4978d5    # 0.787f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    .line 406
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 407
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    if-eqz p2, :cond_1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    const/4 v7, 0x0

    aput v6, v5, v7

    .line 408
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    aput p1, v5, v7

    .line 409
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v4

    .line 407
    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    new-instance p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$4;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 431
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    move v1, p1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 432
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    return-void
.end method

.method public setHasSpoiler(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    return-void
.end method

.method public setHasSpoiler(ZLjava/lang/Float;)V
    .locals 3

    .line 240
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    if-eq v0, p1, :cond_3

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->spoilerRevealProgress:F

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    .line 244
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeSnapshot:Landroid/graphics/Bitmap;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    iput v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageViewCrossfadeProgress:F

    .line 257
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->hasSpoiler:Z

    .line 258
    iput-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->crossfadeDuration:Ljava/lang/Float;

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setHasBlur(Z)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setIsVertical(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isVertical:Z

    return-void
.end method

.method public setItemSize(I)V
    .locals 2

    .line 269
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSize:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x35

    .line 275
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 276
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v0, 0x5

    .line 281
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->itemSizeChanged:Z

    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setNum(I)V

    return-void
.end method

.method public setOnCheckClickLisnener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
    .locals 6

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 326
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 327
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 328
    iget-boolean p3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 329
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 330
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 335
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 336
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 337
    :cond_1
    iget-object v2, p3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 338
    iget-boolean v2, p3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v4, ":"

    if-eqz v2, :cond_2

    .line 339
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vthumb://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 341
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p3, p3, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 342
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumb://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 345
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    .line 348
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    xor-int/lit8 p3, v0, 0x1

    invoke-virtual {p2, p3, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 349
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    move v2, p3

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move p3, v1

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 351
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 352
    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$SearchImage;ZZ)V
    .locals 14

    move-object v0, p0

    move-object v11, p1

    const/4 v12, 0x0

    .line 356
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 357
    iput-object v11, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->searchEntry:Lorg/telegram/messenger/MediaController$SearchImage;

    move/from16 v1, p3

    .line 358
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 360
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->zoomOnSelect:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->nophotos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 361
    :goto_0
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v13, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 362
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-virtual {v4, v2, v3, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 363
    :cond_1
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_2

    .line 364
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v11, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-string v4, "80_80"

    invoke-virtual {v3, v2, v4, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 365
    :cond_2
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 366
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2, v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 367
    :cond_3
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 368
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    .line 369
    iget v4, v11, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v4, v13, :cond_4

    iget-object v4, v11, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    .line 370
    iput v4, v2, Lorg/telegram/messenger/ImageLocation;->imageType:I

    .line 372
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2, v3, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 373
    :cond_5
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_7

    .line 374
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 375
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 377
    iget-object v1, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x5a

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 378
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    const-string v10, "52_52"

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    .line 380
    :cond_6
    iget-object v2, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x140

    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 381
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-virtual {v4, v2, v3, v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_1

    .line 384
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz p2, :cond_8

    .line 386
    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$SearchImage;->getPathToAttach()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_2

    :cond_8
    move v1, v12

    .line 387
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v13}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 388
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    move v5, v3

    goto :goto_3

    :cond_9
    move v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v2, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 391
    invoke-virtual {p0, v12}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    return-void
.end method

.method public showCheck(Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 458
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    :cond_1
    return-void

    .line 461
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 462
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 463
    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 465
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 466
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 468
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    if-eqz p1, :cond_4

    move v8, v0

    goto :goto_0

    :cond_4
    move v8, v1

    :goto_0
    const/4 v9, 0x0

    aput v8, v7, v9

    .line 469
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    aput v0, v7, v9

    .line 470
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v6

    .line 468
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$5;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showImage()V
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method
