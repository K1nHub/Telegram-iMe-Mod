.class public final Lcom/facebook/flipper/android/AndroidFlipperClient;
.super Ljava/lang/Object;
.source "AndroidFlipperClient.java"


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/facebook/flipper/core/FlipperClient;
    .locals 0

    .line 15
    new-instance p0, Lcom/facebook/flipper/android/NoOpAndroidFlipperClient;

    invoke-direct {p0}, Lcom/facebook/flipper/android/NoOpAndroidFlipperClient;-><init>()V

    return-object p0
.end method
