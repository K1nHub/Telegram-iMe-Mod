.class public interface abstract Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.super Ljava/lang/Object;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourcesProvider"
.end annotation


# virtual methods
.method public abstract applyServiceShaderMatrix(IIFF)V
.end method

.method public abstract getColor(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getColorOrDefault(Ljava/lang/String;)I
.end method

.method public abstract getCurrentColor(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
.end method

.method public abstract hasGradientService()Z
.end method

.method public abstract setAnimatedColor(Ljava/lang/String;I)V
.end method
