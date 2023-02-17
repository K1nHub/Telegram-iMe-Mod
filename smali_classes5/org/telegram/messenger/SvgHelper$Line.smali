.class Lorg/telegram/messenger/SvgHelper$Line;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Line"
.end annotation


# instance fields
.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$Line;->x1:F

    .line 71
    iput p2, p0, Lorg/telegram/messenger/SvgHelper$Line;->y1:F

    .line 72
    iput p3, p0, Lorg/telegram/messenger/SvgHelper$Line;->x2:F

    .line 73
    iput p4, p0, Lorg/telegram/messenger/SvgHelper$Line;->y2:F

    return-void
.end method
