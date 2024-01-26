.class public final Lorg/ton/cell/CellDescriptor$Companion;
.super Ljava/lang/Object;
.source "CellDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/cell/CellDescriptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/cell/CellDescriptor$Companion;

    invoke-direct {v0}, Lorg/ton/cell/CellDescriptor$Companion;-><init>()V

    sput-object v0, Lorg/ton/cell/CellDescriptor$Companion;->$$INSTANCE:Lorg/ton/cell/CellDescriptor$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeD1-dYmMkqQ(IZI)B
    .locals 0

    shl-int/lit8 p1, p1, 0x5

    shl-int/lit8 p2, p2, 0x3

    or-int/2addr p1, p2

    and-int/lit8 p2, p3, 0x7

    or-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method

.method public final computeD2(I)B
    .locals 1

    ushr-int/lit8 v0, p1, 0x2

    and-int/lit8 v0, v0, -0x2

    .line 85
    rem-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method public final fromBytes(BB)Lorg/ton/cell/CellDescriptor;
    .locals 1

    .line 99
    new-instance v0, Lorg/ton/cell/CellDescriptorImpl;

    invoke-direct {v0, p1, p2}, Lorg/ton/cell/CellDescriptorImpl;-><init>(BB)V

    return-object v0
.end method
