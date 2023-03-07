.class Lorg/telegram/ui/ThemePreviewActivity$12;
.super Landroid/widget/FrameLayout;
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
.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1330
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrixForView(Landroid/view/View;Landroid/view/View;)V

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1337
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$12;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
