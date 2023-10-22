.class final Lorg/ton/cell/CellType$Companion$values$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CellType.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lorg/ton/cell/CellType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/cell/CellType$Companion$values$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/cell/CellType$Companion$values$2;

    invoke-direct {v0}, Lorg/ton/cell/CellType$Companion$values$2;-><init>()V

    sput-object v0, Lorg/ton/cell/CellType$Companion$values$2;->INSTANCE:Lorg/ton/cell/CellType$Companion$values$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/ton/cell/CellType$Companion$values$2;->invoke()[Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lorg/ton/cell/CellType;
    .locals 1

    .line 76
    invoke-static {}, Lorg/ton/cell/CellType;->values()[Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method
