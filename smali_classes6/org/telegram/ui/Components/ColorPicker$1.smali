.class Lorg/telegram/ui/Components/ColorPicker$1;
.super Landroid/widget/LinearLayout;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ColorPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$1;->rect:Landroid/graphics/RectF;

    .line 225
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$1;->paint:Landroid/graphics/Paint;

    const-string p2, "dialogBackgroundGray"

    .line 227
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/Components/ColorPicker;->access$000(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x5b

    .line 233
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v2}, Lorg/telegram/ui/Components/ColorPicker;->access$100(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x19

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/Components/ColorPicker;->access$100(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker$1;->rect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/4 v4, 0x5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x25

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker$1;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
