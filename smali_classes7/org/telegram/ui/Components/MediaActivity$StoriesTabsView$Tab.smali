.class Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;
.super Ljava/lang/Object;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Tab"
.end annotation


# instance fields
.field private active:Z

.field final clickRect:Landroid/graphics/RectF;

.field final drawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private drawableColor:I

.field final i:I

.field final layout:Landroid/text/StaticLayout;

.field final layoutLeft:F

.field final layoutWidth:F

.field final nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final paint:Landroid/text/TextPaint;

.field final ripple:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;IILjava/lang/CharSequence;)V
    .locals 10

    .line 1276
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->this$1:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->paint:Landroid/text/TextPaint;

    .line 1272
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    .line 1274
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xc8

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    .line 1343
    iput v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawableColor:I

    .line 1277
    iput p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->i:I

    .line 1279
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-direct {v1, p3, v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1280
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 1281
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 1282
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/4 p3, 0x0

    .line 1283
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1286
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1287
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    :cond_0
    const-string p2, "fonts/rmedium.ttf"

    .line 1291
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 p2, 0xc

    .line 1292
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1293
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->access$2200(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1294
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layout:Landroid/text/StaticLayout;

    .line 1295
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_1

    invoke-virtual {v8, p3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p4

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    iput p4, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layoutWidth:F

    .line 1296
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p4

    if-lez p4, :cond_2

    invoke-virtual {v8, p3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layoutLeft:F

    .line 1298
    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->access$2200(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 p2, 0x7

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;)Z
    .locals 0

    .line 1263
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->active:Z

    return p0
.end method


# virtual methods
.method public setActive(ZZ)V
    .locals 3

    .line 1303
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->active:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1308
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 1309
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 1310
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-eqz p1, :cond_4

    .line 1316
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1317
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    const/16 v2, 0x26

    if-lt p2, v2, :cond_2

    .line 1318
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1320
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    if-gt p2, v0, :cond_3

    .line 1321
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_0

    .line 1323
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 1326
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    const/16 v0, 0x13

    if-lt p2, v0, :cond_5

    .line 1327
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1328
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_0

    .line 1330
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1331
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    if-eqz p1, :cond_7

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    if-eqz p2, :cond_7

    .line 1337
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1340
    :cond_7
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->active:Z

    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 1346
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->this$1:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7f

    .line 1347
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1350
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1351
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawableColor:I

    if-eq v0, p1, :cond_1

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method
