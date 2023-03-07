.class Lorg/solovyev/android/checkout/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Logger;


# instance fields
.field private mEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/solovyev/android/checkout/DefaultLogger;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/DefaultLogger;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/DefaultLogger;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/DefaultLogger;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/DefaultLogger;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
