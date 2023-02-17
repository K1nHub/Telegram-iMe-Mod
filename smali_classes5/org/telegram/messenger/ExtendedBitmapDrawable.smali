.class public Lorg/telegram/messenger/ExtendedBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ExtendedBitmapDrawable.java"


# instance fields
.field private canInvert:Z

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZI)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    iput-boolean p2, p0, Lorg/telegram/messenger/ExtendedBitmapDrawable;->canInvert:Z

    .line 14
    iput p3, p0, Lorg/telegram/messenger/ExtendedBitmapDrawable;->orientation:I

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/telegram/messenger/ExtendedBitmapDrawable;->orientation:I

    return v0
.end method

.method public isCanInvert()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/telegram/messenger/ExtendedBitmapDrawable;->canInvert:Z

    return v0
.end method
