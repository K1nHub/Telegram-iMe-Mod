.class Lorg/telegram/ui/DialogsActivity$46;
.super Landroid/widget/FrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastGradientWidth:I

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private updateGradient:Landroid/graphics/LinearGradient;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 7745
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7747
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->paint:Landroid/graphics/Paint;

    .line 7748
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 7754
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->updateGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    .line 7755
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7756
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$46;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7757
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->updateGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$46;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7758
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$46;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7759
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$46;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    .line 7760
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 7762
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 7767
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 7768
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7769
    iget p2, p0, Lorg/telegram/ui/DialogsActivity$46;->lastGradientWidth:I

    const/4 v0, 0x2

    if-eq p2, p1, :cond_0

    .line 7770
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p1

    const/4 v5, 0x0

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$46;->updateGradient:Landroid/graphics/LinearGradient;

    .line 7771
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$46;->lastGradientWidth:I

    .line 7773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$33700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    .line 7774
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$33600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object p2

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    const/16 v2, 0x23

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x96408e
        -0xac4c53    # -2.8140004E38f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 7779
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7780
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$33802(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7781
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 7782
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$33802(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7784
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7785
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$46;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24900(Lorg/telegram/ui/DialogsActivity;)V

    :cond_1
    return-void
.end method
