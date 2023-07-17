.class Lorg/telegram/ui/ThemePreviewActivity$8$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$8;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$8;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$8$2;->this$1:Lorg/telegram/ui/ThemePreviewActivity$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$8$2;->this$1:Lorg/telegram/ui/ThemePreviewActivity$8;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$8;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$8$2;->this$1:Lorg/telegram/ui/ThemePreviewActivity$8;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$8;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$8$2;->this$1:Lorg/telegram/ui/ThemePreviewActivity$8;

    iget-object p1, p1, Lorg/telegram/ui/ThemePreviewActivity$8;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Cells/BrightnessControlCell;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
