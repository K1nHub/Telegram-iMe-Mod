.class Lorg/telegram/ui/ThemePreviewActivity$14;
.super Lorg/telegram/ui/Cells/BrightnessControlCell;
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
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1673
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/BrightnessControlCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected didChangedValue(F)V
    .locals 1

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6002(Lorg/telegram/ui/ThemePreviewActivity;F)F

    .line 1677
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$14;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
