.class public final Lcom/smedialink/ui/smartpanel/SmartBotsView$1$1;
.super Ljava/lang/Object;
.source "SmartBotsView.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/smartpanel/SmartBotsView;-><init>(Landroid/content/Context;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/smartpanel/SmartBotsView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/smartpanel/SmartBotsView;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/SmartBotsView$1$1;->this$0:Lcom/smedialink/ui/smartpanel/SmartBotsView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/SmartBotsView$1$1;->this$0:Lcom/smedialink/ui/smartpanel/SmartBotsView;

    invoke-static {p1}, Lcom/smedialink/ui/smartpanel/SmartBotsView;->access$updateBaseIcons(Lcom/smedialink/ui/smartpanel/SmartBotsView;)V

    .line 59
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/SmartBotsView$1$1;->this$0:Lcom/smedialink/ui/smartpanel/SmartBotsView;

    invoke-static {p1}, Lcom/smedialink/ui/smartpanel/SmartBotsView;->access$updateIndicator(Lcom/smedialink/ui/smartpanel/SmartBotsView;)V

    return-void
.end method
