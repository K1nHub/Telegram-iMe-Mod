.class public final Lio/github/andreypfau/curve25519/field/FieldElementKt;
.super Ljava/lang/Object;
.source "FieldElement.kt"


# static fields
.field private static final LOW_51_BIT_MASK:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x8000000000000L

    .line 10
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lio/github/andreypfau/curve25519/field/FieldElementKt;->LOW_51_BIT_MASK:J

    return-void
.end method

.method public static final synthetic access$getLOW_51_BIT_MASK$p()J
    .locals 2

    .line 1
    sget-wide v0, Lio/github/andreypfau/curve25519/field/FieldElementKt;->LOW_51_BIT_MASK:J

    return-wide v0
.end method
