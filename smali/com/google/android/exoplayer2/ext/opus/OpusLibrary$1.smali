.class Lcom/google/android/exoplayer2/ext/opus/OpusLibrary$1;
.super Lcom/google/android/exoplayer2/util/LibraryLoader;
.source "OpusLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/opus/OpusLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected loadLibrary(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
