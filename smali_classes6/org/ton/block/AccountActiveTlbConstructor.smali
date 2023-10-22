.class final Lorg/ton/block/AccountActiveTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AccountActive.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AccountActive;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountActive.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountActive.kt\norg/ton/block/AccountActiveTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,51:1\n131#2:52\n132#2:56\n59#3,3:53\n52#3:58\n86#4:57\n*S KotlinDebug\n*F\n+ 1 AccountActive.kt\norg/ton/block/AccountActiveTlbConstructor\n*L\n40#1:52\n40#1:56\n41#1:53,3\n47#1:58\n46#1:57\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountActiveTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccountActiveTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AccountActiveTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AccountActiveTlbConstructor;->INSTANCE:Lorg/ton/block/AccountActiveTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "account_active$1 _:StateInit = AccountState;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountActiveTlbConstructor;->loadTlb-P1cIiig(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/AccountActive;->box-impl(Lorg/ton/block/StateInit;)Lorg/ton/block/AccountActive;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-P1cIiig(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    check-cast p1, Lorg/ton/block/StateInit;

    .line 48
    invoke-static {p1}, Lorg/ton/block/AccountActive;->constructor-impl(Lorg/ton/block/StateInit;)Lorg/ton/block/StateInit;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/AccountActive;

    invoke-virtual {p2}, Lorg/ton/block/AccountActive;->unbox-impl()Lorg/ton/block/StateInit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountActiveTlbConstructor;->storeTlb-wKbCAR4(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V

    return-void
.end method

.method public storeTlb-wKbCAR4(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
