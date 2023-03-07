.class public interface abstract Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.super Ljava/lang/Object;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntityViewDelegate"
.end annotation


# virtual methods
.method public abstract allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method

.method public abstract getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
.end method

.method public abstract getCropRotation()F
.end method

.method public abstract getTransformedTouch(FF)[F
.end method

.method public abstract onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method

.method public abstract onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
.end method
