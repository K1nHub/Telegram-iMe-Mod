.class public final Lorg/ton/cell/CellBuilder$Companion;
.super Ljava/lang/Object;
.source "CellBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellBuilder.kt\norg/ton/cell/CellBuilder$Companion\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,407:1\n135#2,2:408\n*S KotlinDebug\n*F\n+ 1 CellBuilder.kt\norg/ton/cell/CellBuilder$Companion\n*L\n108#1:408,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/cell/CellBuilder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/cell/CellBuilder$Companion;

    invoke-direct {v0}, Lorg/ton/cell/CellBuilder$Companion;-><init>()V

    sput-object v0, Lorg/ton/cell/CellBuilder$Companion;->$$INSTANCE:Lorg/ton/cell/CellBuilder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginCell()Lorg/ton/cell/CellBuilder;
    .locals 8

    .line 95
    new-instance v7, Lorg/ton/cell/CellBuilderImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ton/cell/CellBuilderImpl;-><init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ton/cell/CellBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lorg/ton/cell/CellBuilderImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/ton/cell/CellBuilderImpl;-><init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Lorg/ton/cell/CellBuilderImpl;->build()Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method
