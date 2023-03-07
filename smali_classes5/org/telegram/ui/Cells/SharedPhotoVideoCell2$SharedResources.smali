.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;
.super Ljava/lang/Object;
.source "SharedPhotoVideoCell2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedResources"
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field highlightPaint:Landroid/graphics/Paint;

.field imageFilters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playDrawable:Landroid/graphics/drawable/Drawable;

.field textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    .line 581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->backgroundPaint:Landroid/graphics/Paint;

    .line 583
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    .line 584
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->imageFilters:Landroid/util/SparseArray;

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 590
    sget v0, Lorg/telegram/messenger/R$drawable;->play_mini_video:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->backgroundPaint:Landroid/graphics/Paint;

    const-string v0, "sharedMedia_photoPlaceholder"

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;)Landroid/graphics/Paint;
    .locals 0

    .line 579
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public getFilterString(I)Ljava/lang/String;
    .locals 2

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->imageFilters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_isc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->imageFilters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
