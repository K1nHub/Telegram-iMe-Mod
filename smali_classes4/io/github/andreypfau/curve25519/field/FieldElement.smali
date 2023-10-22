.class public final Lio/github/andreypfau/curve25519/field/FieldElement;
.super Ljava/lang/Object;
.source "FieldElement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/field/FieldElement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFieldElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FieldElement.kt\nio/github/andreypfau/curve25519/field/FieldElement\n+ 2 constantTime.kt\nio/github/andreypfau/curve25519/internal/ConstantTimeKt\n*L\n1#1,485:1\n62#1:496\n63#1,3:500\n66#1:504\n62#1:505\n63#1,3:509\n66#1:513\n62#1:514\n63#1,3:518\n66#1:522\n62#1:523\n63#1,3:527\n66#1:531\n62#1:532\n63#1,3:536\n66#1:540\n12#2,2:486\n12#2,2:488\n12#2,2:490\n12#2,2:492\n12#2,2:494\n23#2,3:497\n26#2:503\n23#2,3:506\n26#2:512\n23#2,3:515\n26#2:521\n23#2,3:524\n26#2:530\n23#2,3:533\n26#2:539\n23#2,4:541\n12#2,2:545\n12#2,2:547\n12#2,2:549\n12#2,2:551\n12#2,2:553\n29#2,6:555\n20#2:561\n29#2,6:562\n20#2:568\n*S KotlinDebug\n*F\n+ 1 FieldElement.kt\nio/github/andreypfau/curve25519/field/FieldElement\n*L\n54#1:496\n54#1:500,3\n54#1:504\n55#1:505\n55#1:509,3\n55#1:513\n56#1:514\n56#1:518,3\n56#1:522\n57#1:523\n57#1:527,3\n57#1:531\n58#1:532\n58#1:536,3\n58#1:540\n45#1:486,2\n46#1:488,2\n47#1:490,2\n48#1:492,2\n49#1:494,2\n54#1:497,3\n54#1:503\n55#1:506,3\n55#1:512\n56#1:515,3\n56#1:521\n57#1:524,3\n57#1:530\n58#1:533,3\n58#1:539\n62#1:541,4\n69#1:545,2\n70#1:547,2\n71#1:549,2\n72#1:551,2\n73#1:553,2\n115#1:555,6\n115#1:561\n121#1:562,6\n121#1:568\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;


# instance fields
.field private final inner:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    return-void
.end method

.method private constructor <init>(JJJJJ)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const/4 p1, 0x2

    aput-wide p5, v0, p1

    const/4 p1, 0x3

    aput-wide p7, v0, p1

    const/4 p1, 0x4

    aput-wide p9, v0, p1

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, v0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>(JJJJJ)V

    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    return-void
.end method

.method public synthetic constructor <init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [J

    .line 15
    fill-array-data p1, :array_0

    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([J)V

    return-void
.end method

.method public static synthetic minusOne$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->minusOne(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->set(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement;[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zero$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->zero(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final conditionalAssign(Lio/github/andreypfau/curve25519/field/FieldElement;I)V
    .locals 9

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    iget-object v1, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    neg-int p2, p2

    int-to-long v7, p2

    xor-long/2addr v3, v5

    and-long/2addr v3, v7

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 70
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    and-long/2addr v2, v7

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 71
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    and-long/2addr v2, v7

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 72
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    xor-long/2addr v2, v4

    and-long/2addr v2, v7

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 73
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object p1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    iget-object p1, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p1, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    and-long/2addr v1, v7

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-void
.end method

.method public final conditionalNegate(I)V
    .locals 3

    .line 125
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    invoke-virtual {v0, p0}, Lio/github/andreypfau/curve25519/field/FieldElement;->negate(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalAssign(Lio/github/andreypfau/curve25519/field/FieldElement;I)V

    return-void
.end method

.method public final conditionalSwap(Lio/github/andreypfau/curve25519/field/FieldElement;I)V
    .locals 10

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    neg-int p2, p2

    int-to-long v6, p2

    xor-long v8, v2, v4

    and-long/2addr v8, v6

    xor-long/2addr v2, v8

    xor-long/2addr v4, v8

    .line 63
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 64
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 62
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    xor-long v8, v1, v3

    and-long/2addr v8, v6

    xor-long/2addr v1, v8

    xor-long/2addr v3, v8

    .line 63
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 64
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 62
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    xor-long v8, v1, v3

    and-long/2addr v8, v6

    xor-long/2addr v1, v8

    xor-long/2addr v3, v8

    .line 63
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 64
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 62
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    xor-long v8, v1, v3

    and-long/2addr v8, v6

    xor-long/2addr v1, v8

    xor-long/2addr v3, v8

    .line 63
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 64
    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 62
    iget-object p2, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    iget-object p2, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    xor-long v8, v1, v3

    and-long v5, v6, v8

    xor-long/2addr v1, v5

    xor-long/2addr v3, v5

    .line 63
    iget-object p1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 64
    iget-object p1, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-void
.end method

.method public final constantTimeEquals(Lio/github/andreypfau/curve25519/field/FieldElement;)I
    .locals 7

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-static {p0, v0, v1, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement;[BILjava/lang/Object;)[B

    move-result-object v2

    .line 120
    invoke-static {p1, v0, v1, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement;[BILjava/lang/Object;)[B

    move-result-object p1

    .line 29
    array-length v0, v2

    array-length v1, p1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    array-length v0, v2

    move v1, v3

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    aget-byte v5, v2, v1

    aget-byte v6, p1, v1

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, v4, 0x0

    .line 20
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 p1, 0x3f

    ushr-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    long-to-int v3, v0

    :goto_1
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 282
    :cond_0
    instance-of v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 283
    :cond_1
    check-cast p1, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->constantTimeEquals(Lio/github/andreypfau/curve25519/field/FieldElement;)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getInner-Y2RjT0g()[J
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 287
    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0}, Lkotlin/ULongArray;->hashCode-impl([J)I

    move-result v0

    return v0
.end method

.method public final invert(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->invert(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final isNegative()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-static {p0, v0, v1, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement;[BILjava/lang/Object;)[B

    move-result-object v0

    const/4 v2, 0x0

    .line 109
    aget-byte v0, v0, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public final minusOne(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 11

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x0

    const-wide v2, 0x7ffffffffffecL

    invoke-static {v0, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 103
    iget-object v4, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const-wide v5, 0x7ffffffffffffL

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/unsigned/UArraysKt;->fill-K6DWlUc$default([JJIIILjava/lang/Object;)V

    return-object p1
.end method

.method public final mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final mul12166(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul121666(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final negate(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 7

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 33
    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const-wide v5, 0x7ffffffffffed0L

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 34
    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const-wide v5, 0x7ffffffffffff0L

    sub-long v3, v5, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 35
    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    sub-long v3, v5, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 36
    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    sub-long v3, v5, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 37
    iget-object p1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 31
    invoke-virtual {p0, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->reduce-QwZRm1k([J)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p0
.end method

.method public final one(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 11

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 98
    iget-object v4, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lkotlin/collections/unsigned/UArraysKt;->fill-K6DWlUc$default([JJIIILjava/lang/Object;)V

    return-object p1
.end method

.method public final pow22501()Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lio/github/andreypfau/curve25519/field/FieldElement;",
            "Lio/github/andreypfau/curve25519/field/FieldElement;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    new-instance v3, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 225
    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 226
    new-instance v5, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v5, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    new-instance v6, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v6, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    invoke-virtual {v4, p0}, Lio/github/andreypfau/curve25519/field/FieldElement;->square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x2

    .line 230
    invoke-virtual {v5, v4, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 231
    invoke-virtual {v5, p0, v5}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 232
    invoke-virtual {v0, v4, v5}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 233
    invoke-virtual {v4, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 234
    invoke-virtual {v5, v5, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x5

    .line 235
    invoke-virtual {v4, v5, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 236
    invoke-virtual {v6, v4, v5}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/16 v1, 0xa

    .line 237
    invoke-virtual {v4, v6, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 238
    invoke-virtual {v5, v4, v6}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/16 v2, 0x14

    .line 239
    invoke-virtual {v4, v5, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 240
    invoke-virtual {v5, v4, v5}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 241
    invoke-virtual {v4, v5, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 242
    invoke-virtual {v6, v4, v6}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/16 v1, 0x32

    .line 243
    invoke-virtual {v4, v6, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 244
    invoke-virtual {v4, v4, v6}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    const/16 v2, 0x64

    .line 245
    invoke-virtual {v5, v4, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 246
    invoke-virtual {v4, v5, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 247
    invoke-virtual {v4, v4, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 248
    invoke-virtual {v3, v4, v6}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 250
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object p1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v0, p1, p2}, Lio/github/andreypfau/curve25519/internal/FieldCommonKt;->fePow2k-HXTcExc([J[JI)V

    return-object p0

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pow58()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow22501()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x2

    .line 259
    invoke-virtual {v0, v0, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->pow2k(Lio/github/andreypfau/curve25519/field/FieldElement;I)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 260
    invoke-virtual {p0, p0, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method

.method public final reduce-QwZRm1k([J)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string/jumbo v0, "limbs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->reduce-tBf0fek([JLio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 3

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    iget-object v0, p2, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)[J

    return-object p2
.end method

.method public final setBytes([BI)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->fromBytes([BILio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public final toBytes([B)[B
    .locals 24

    move-object/from16 v0, p1

    const-string/jumbo v1, "output"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v1, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    .line 151
    iget-object v4, v2, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-virtual {v1, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->reduce-QwZRm1k([J)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 152
    iget-object v1, v1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    const/4 v12, 0x3

    invoke-static {v1, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    const/4 v15, 0x4

    invoke-static {v1, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    const/16 v1, 0x13

    int-to-long v3, v1

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    .line 154
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v5, v19

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    const/16 v21, 0x33

    ushr-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v7, v19

    .line 155
    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    ushr-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v10, v19

    .line 156
    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    ushr-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v13, v19

    .line 157
    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    ushr-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v16, v19

    .line 158
    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    ushr-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    .line 162
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    mul-long v3, v3, v19

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    ushr-long v5, v3, v21

    .line 165
    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    .line 166
    invoke-static {}, Lio/github/andreypfau/curve25519/field/FieldElementKt;->access$getLOW_51_BIT_MASK$p()J

    move-result-wide v7

    and-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    ushr-long v7, v5, v21

    .line 167
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    add-long/2addr v10, v7

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    .line 168
    invoke-static {}, Lio/github/andreypfau/curve25519/field/FieldElementKt;->access$getLOW_51_BIT_MASK$p()J

    move-result-wide v10

    and-long/2addr v5, v10

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    ushr-long v10, v7, v21

    .line 169
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    add-long/2addr v13, v10

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    .line 170
    invoke-static {}, Lio/github/andreypfau/curve25519/field/FieldElementKt;->access$getLOW_51_BIT_MASK$p()J

    move-result-wide v13

    and-long/2addr v7, v13

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    ushr-long v13, v10, v21

    .line 171
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    add-long v16, v16, v13

    invoke-static/range {v16 .. v17}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    .line 172
    invoke-static {}, Lio/github/andreypfau/curve25519/field/FieldElementKt;->access$getLOW_51_BIT_MASK$p()J

    move-result-wide v16

    and-long v10, v10, v16

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    .line 175
    invoke-static {}, Lio/github/andreypfau/curve25519/field/FieldElementKt;->access$getLOW_51_BIT_MASK$p()J

    move-result-wide v16

    and-long v13, v13, v16

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    long-to-int v1, v3

    int-to-byte v1, v1

    const/16 v17, 0x0

    .line 177
    aput-byte v1, v0, v17

    const/16 v1, 0x8

    ushr-long v18, v3, v1

    .line 178
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    ushr-long v18, v3, v1

    .line 179
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    const/16 v1, 0x18

    ushr-long v18, v3, v1

    .line 180
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v12

    const/16 v1, 0x20

    ushr-long v1, v3, v1

    .line 181
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v15

    const/16 v1, 0x28

    ushr-long v1, v3, v1

    .line 182
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    .line 183
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    shl-long v18, v5, v12

    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v18

    or-long v3, v3, v18

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    ushr-long v1, v5, v2

    .line 184
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0xd

    ushr-long v18, v5, v1

    .line 185
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, 0x15

    ushr-long v18, v5, v1

    move-wide/from16 v22, v13

    .line 186
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0x9

    aput-byte v12, v0, v13

    const/16 v12, 0x1d

    ushr-long v13, v5, v12

    .line 187
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0xa

    aput-byte v13, v0, v14

    const/16 v13, 0x25

    ushr-long v18, v5, v13

    .line 188
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0xb

    aput-byte v12, v0, v13

    const/16 v12, 0x2d

    ushr-long/2addr v5, v12

    .line 189
    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    shl-long v12, v7, v3

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v5, v12

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    long-to-int v3, v5

    int-to-byte v3, v3

    const/16 v5, 0xc

    aput-byte v3, v0, v5

    ushr-long v12, v7, v9

    .line 190
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v2, 0xd

    aput-byte v3, v0, v2

    ushr-long v2, v7, v14

    .line 191
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    const/16 v2, 0x12

    ushr-long v12, v7, v2

    .line 192
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v3, v12

    int-to-byte v3, v3

    const/16 v6, 0xf

    aput-byte v3, v0, v6

    const/16 v3, 0x1a

    ushr-long v12, v7, v3

    .line 193
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v9, v12

    int-to-byte v9, v9

    const/16 v12, 0x10

    aput-byte v9, v0, v12

    const/16 v9, 0x22

    ushr-long v12, v7, v9

    .line 194
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v9, v12

    int-to-byte v9, v9

    const/16 v12, 0x11

    aput-byte v9, v0, v12

    const/16 v9, 0x2a

    ushr-long v12, v7, v9

    .line 195
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    long-to-int v9, v12

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    const/16 v2, 0x32

    ushr-long/2addr v7, v2

    .line 196
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v2, 0x1

    shl-long v12, v10, v2

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v7, v12

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    long-to-int v2, v7

    int-to-byte v2, v2

    const/16 v7, 0x13

    aput-byte v2, v0, v7

    const/4 v2, 0x7

    ushr-long v7, v10, v2

    .line 197
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    long-to-int v2, v7

    int-to-byte v2, v2

    const/16 v4, 0x14

    aput-byte v2, v0, v4

    ushr-long v6, v10, v6

    .line 198
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    ushr-long v1, v10, v1

    .line 199
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x16

    aput-byte v1, v0, v2

    const/16 v1, 0x1f

    ushr-long v1, v10, v1

    .line 200
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x17

    aput-byte v1, v0, v2

    const/16 v1, 0x27

    ushr-long v1, v10, v1

    .line 201
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x18

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    ushr-long v1, v10, v1

    .line 202
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    shl-long v6, v22, v15

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x19

    aput-byte v1, v0, v2

    ushr-long v1, v22, v15

    .line 203
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    ushr-long v1, v22, v5

    .line 204
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1b

    aput-byte v1, v0, v2

    const/16 v1, 0x14

    ushr-long v1, v22, v1

    .line 205
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1c

    aput-byte v1, v0, v2

    const/16 v1, 0x1c

    ushr-long v1, v22, v1

    .line 206
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1d

    aput-byte v1, v0, v2

    const/16 v1, 0x24

    ushr-long v1, v22, v1

    .line 207
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1e

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    ushr-long v1, v22, v1

    .line 208
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1f

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldElement(inner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    invoke-static {v1}, Lkotlin/ULongArray;->toString-impl([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zero(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 8

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v1, p1, Lio/github/andreypfau/curve25519/field/FieldElement;->inner:[J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/unsigned/UArraysKt;->fill-K6DWlUc$default([JJIIILjava/lang/Object;)V

    return-object p1
.end method
