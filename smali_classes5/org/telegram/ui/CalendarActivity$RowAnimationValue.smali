.class final Lorg/telegram/ui/CalendarActivity$RowAnimationValue;
.super Ljava/lang/Object;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowAnimationValue"
.end annotation


# instance fields
.field alpha:F

.field endX:F

.field startX:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    iput p1, p0, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->startX:F

    .line 1610
    iput p2, p0, Lorg/telegram/ui/CalendarActivity$RowAnimationValue;->endX:F

    return-void
.end method
