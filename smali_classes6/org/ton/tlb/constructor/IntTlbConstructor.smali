.class public final Lorg/ton/tlb/constructor/IntTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "IntTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntTlbConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntTlbConstructor.kt\norg/ton/tlb/constructor/IntTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,57:1\n131#2,2:58\n86#3:60\n*S KotlinDebug\n*F\n+ 1 IntTlbConstructor.kt\norg/ton/tlb/constructor/IntTlbConstructor\n*L\n17#1:58,2\n23#1:60\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/tlb/constructor/IntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;

    return-void
.end method
