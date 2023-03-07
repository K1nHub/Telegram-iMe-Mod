.class public final Lorg/solovyev/android/checkout/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;

.field public final expiresAt:J


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/solovyev/android/checkout/Cache$Entry;->data:Ljava/lang/Object;

    .line 130
    iput-wide p2, p0, Lorg/solovyev/android/checkout/Cache$Entry;->expiresAt:J

    return-void
.end method
