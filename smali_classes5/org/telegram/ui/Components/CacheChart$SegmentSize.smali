.class public Lorg/telegram/ui/Components/CacheChart$SegmentSize;
.super Ljava/lang/Object;
.source "CacheChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CacheChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentSize"
.end annotation


# instance fields
.field index:I

.field public selected:Z

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;
    .locals 1

    .line 545
    new-instance v0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    invoke-direct {v0}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;-><init>()V

    .line 546
    iput-wide p0, v0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    .line 547
    iput-boolean p2, v0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->selected:Z

    return-object v0
.end method
