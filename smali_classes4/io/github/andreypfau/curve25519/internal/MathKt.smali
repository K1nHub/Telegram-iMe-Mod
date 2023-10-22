.class public final Lio/github/andreypfau/curve25519/internal/MathKt;
.super Ljava/lang/Object;
.source "math.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 math.kt\nio/github/andreypfau/curve25519/internal/MathKt\n*L\n1#1,35:1\n23#1,3:36\n23#1,3:39\n23#1,3:42\n23#1,3:45\n*S KotlinDebug\n*F\n+ 1 math.kt\nio/github/andreypfau/curve25519/internal/MathKt\n*L\n29#1:36,3\n30#1:39,3\n29#1:42,3\n30#1:45,3\n*E\n"
.end annotation


# static fields
.field private static final MASK32:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x100000000L

    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lio/github/andreypfau/curve25519/internal/MathKt;->MASK32:J

    return-void
.end method

.method public static final mul64-h-0OkrE(JJ[J)[J
    .locals 14

    move-object/from16 v0, p4

    const-string/jumbo v1, "output"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-wide v1, Lio/github/andreypfau/curve25519/internal/MathKt;->MASK32:J

    and-long v3, p0, v1

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v5, 0x20

    ushr-long v6, p0, v5

    .line 9
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v8, p2, v1

    .line 10
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    ushr-long v10, p2, v5

    .line 11
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    mul-long v12, v3, v8

    .line 12
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    mul-long/2addr v8, v6

    .line 13
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    ushr-long/2addr v12, v5

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v1, v8

    .line 14
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    ushr-long/2addr v8, v5

    .line 15
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    mul-long/2addr v3, v10

    .line 16
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    mul-long/2addr v6, v10

    .line 17
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    add-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    ushr-long/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    mul-long v1, p0, p2

    .line 18
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-object v0
.end method

.method public static synthetic mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x2

    .line 7
    invoke-static {p4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object p4

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object p0

    return-object p0
.end method
