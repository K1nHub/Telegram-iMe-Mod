.class Lorg/telegram/ui/CalendarActivity$MonthView$2$2;
.super Landroid/view/View;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity$MonthView$2;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/content/Context;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 967
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 968
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2800(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 969
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;->this$2:Lorg/telegram/ui/CalendarActivity$MonthView$2;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2900(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
