.class public interface abstract Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;
.super Ljava/lang/Object;
.source "ScrollingPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PagerAttacher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract attachToPager(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract detachFromPager()V
.end method
