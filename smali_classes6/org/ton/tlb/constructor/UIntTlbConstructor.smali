.class public Lorg/ton/tlb/constructor/UIntTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "UIntTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;
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
    value = "SMAP\nUIntTlbConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntTlbConstructor.kt\norg/ton/tlb/constructor/UIntTlbConstructor\n+ 2 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,62:1\n86#2:63\n*S KotlinDebug\n*F\n+ 1 UIntTlbConstructor.kt\norg/ton/tlb/constructor/UIntTlbConstructor\n*L\n25#1:63\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/tlb/constructor/UIntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;

    return-void
.end method
