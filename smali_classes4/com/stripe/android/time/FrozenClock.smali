.class public Lcom/stripe/android/time/FrozenClock;
.super Lcom/stripe/android/time/Clock;
.source "FrozenClock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/stripe/android/time/Clock;-><init>()V

    return-void
.end method

.method public static freeze(Ljava/util/Calendar;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/stripe/android/time/Clock;->getInstance()Lcom/stripe/android/time/Clock;

    move-result-object v0

    iput-object p0, v0, Lcom/stripe/android/time/Clock;->calendarInstance:Ljava/util/Calendar;

    return-void
.end method

.method public static unfreeze()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/stripe/android/time/Clock;->getInstance()Lcom/stripe/android/time/Clock;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stripe/android/time/Clock;->calendarInstance:Ljava/util/Calendar;

    return-void
.end method
