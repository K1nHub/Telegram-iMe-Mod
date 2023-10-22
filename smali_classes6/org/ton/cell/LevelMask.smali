.class public final Lorg/ton/cell/LevelMask;
.super Ljava/lang/Object;
.source "LevelMask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/LevelMask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/cell/LevelMask$Companion;

.field private static final ZERO:I


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/cell/LevelMask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/cell/LevelMask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/cell/LevelMask;->Companion:Lorg/ton/cell/LevelMask$Companion;

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result v0

    sput v0, Lorg/ton/cell/LevelMask;->ZERO:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ton/cell/LevelMask;->mask:I

    return-void
.end method

.method public static final synthetic access$getZERO$cp()I
    .locals 1

    .line 6
    sget v0, Lorg/ton/cell/LevelMask;->ZERO:I

    return v0
.end method

.method public static final apply-spGXSBY(II)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    and-int/2addr p0, p1

    .line 16
    invoke-static {p0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result p0

    return p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic box-impl(I)Lorg/ton/cell/LevelMask;
    .locals 1

    new-instance v0, Lorg/ton/cell/LevelMask;

    invoke-direct {v0, p0}, Lorg/ton/cell/LevelMask;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static synthetic constructor-impl$default(IILkotlin/jvm/internal/DefaultConstructorMarker;)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 7
    :cond_0
    invoke-static {p0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/ton/cell/LevelMask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/ton/cell/LevelMask;

    invoke-virtual {p1}, Lorg/ton/cell/LevelMask;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getHashIndex-impl(I)I
    .locals 0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final getLevel-impl(I)I
    .locals 0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static final isEmpty-impl(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final or-Cd1l96I(II)I
    .locals 0

    or-int/2addr p0, p1

    .line 27
    invoke-static {p0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LevelMask(mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final virtualize-spGXSBY(II)I
    .locals 0

    ushr-int/2addr p0, p1

    .line 35
    invoke-static {p0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/ton/cell/LevelMask;->mask:I

    invoke-static {v0, p1}, Lorg/ton/cell/LevelMask;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/ton/cell/LevelMask;->mask:I

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/ton/cell/LevelMask;->mask:I

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Lorg/ton/cell/LevelMask;->mask:I

    return v0
.end method
