.class public final Lorg/ton/cell/LevelMask$Companion;
.super Ljava/lang/Object;
.source "LevelMask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/LevelMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/cell/LevelMask$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final level-spGXSBY(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 43
    invoke-static {}, Lorg/ton/cell/LevelMask;->access$getZERO$cp()I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    .line 44
    invoke-static {p1}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result p1

    return p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
