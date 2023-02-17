.class Lorg/telegram/ui/ThemePreviewActivity$26;
.super Landroid/view/View;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2023
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6800(Lorg/telegram/ui/ThemePreviewActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2028
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    const-string v3, "chat_fieldOverlayText"

    invoke-static {v2, v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$6900(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 2030
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->paint:Landroid/graphics/Paint;

    if-ne v1, v0, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/16 v3, 0x7f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-int/lit8 v2, v1, 0xf

    const/4 v3, 0x3

    add-int/2addr v2, v3

    .line 2031
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$26;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
