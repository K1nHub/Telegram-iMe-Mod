.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# static fields
.field public static final STRATEGY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 128
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 130
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 132
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    :goto_0
    return-void
.end method
