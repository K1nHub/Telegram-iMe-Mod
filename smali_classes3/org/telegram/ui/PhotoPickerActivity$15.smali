.class Lorg/telegram/ui/PhotoPickerActivity$15;
.super Landroid/view/View;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1236
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$3600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0x10

    .line 1238
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1239
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 1240
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v4

    .line 1242
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/text/TextPaint;

    move-result-object v5

    const-string v6, "dialogRoundCheckBoxCheck"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1243
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$3700(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1244
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3900(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;

    move-result-object v5

    div-int/2addr v2, v4

    sub-int v6, v3, v2

    int-to-float v7, v6

    add-int/2addr v2, v3

    int-to-float v8, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1245
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3900(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;

    move-result-object v5

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$3800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v5, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1247
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const-string v7, "dialogRoundCheckBox"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1248
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3900(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1249
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3900(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;

    move-result-object v2

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v7}, Lorg/telegram/ui/PhotoPickerActivity;->access$3800(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v2, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1251
    div-int/2addr v1, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const v2, 0x4181999a    # 16.2f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$15;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$3600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
