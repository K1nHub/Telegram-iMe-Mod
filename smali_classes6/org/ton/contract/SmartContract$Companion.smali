.class public final Lorg/ton/contract/SmartContract$Companion;
.super Ljava/lang/Object;
.source "SmartContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/contract/SmartContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartContract.kt\norg/ton/contract/SmartContract$Companion\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,165:1\n135#2,2:166\n59#3,3:168\n*S KotlinDebug\n*F\n+ 1 SmartContract.kt\norg/ton/contract/SmartContract$Companion\n*L\n80#1:166,2\n80#1:168,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/contract/SmartContract$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/contract/SmartContract$Companion;

    invoke-direct {v0}, Lorg/ton/contract/SmartContract$Companion;-><init>()V

    sput-object v0, Lorg/ton/contract/SmartContract$Companion;->$$INSTANCE:Lorg/ton/contract/SmartContract$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final address(ILorg/ton/block/StateInit;)Lorg/ton/block/AddrStd;
    .locals 3

    const-string v0, "stateInit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 80
    sget-object v1, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    .line 60
    invoke-interface {v1, v0, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 80
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-static {p2, v0, v1, v2}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object p2

    new-instance v0, Lorg/ton/block/AddrStd;

    invoke-direct {v0, p1, p2}, Lorg/ton/block/AddrStd;-><init>(ILorg/ton/bitstring/BitString;)V

    return-object v0
.end method
