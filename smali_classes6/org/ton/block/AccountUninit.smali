.class public final Lorg/ton/block/AccountUninit;
.super Ljava/lang/Object;
.source "AccountUninit.kt"

# interfaces
.implements Lorg/ton/block/AccountState;
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/block/AccountState;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "Lorg/ton/block/AccountUninit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/ton/block/AccountUninit;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/AccountUninit;

    invoke-direct {v0}, Lorg/ton/block/AccountUninit;-><init>()V

    sput-object v0, Lorg/ton/block/AccountUninit;->INSTANCE:Lorg/ton/block/AccountUninit;

    .line 11
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/block/AccountUninit$1;->INSTANCE:Lorg/ton/block/AccountUninit$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccountUninit;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lorg/ton/block/AccountUninitTlbConstructor;->INSTANCE:Lorg/ton/block/AccountUninitTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/AccountUninit;->$$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/AccountUninit;->$cachedSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountUninit;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AccountUninit;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountUninit;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountUninit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AccountUninit;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountUninit;->$$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/AccountUninit;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountUninit;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountUninit;->$$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/AccountUninitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountUninit;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_uninit"

    .line 15
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->type(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/AccountUninit;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lorg/ton/block/AccountUninit;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lorg/ton/block/AccountUninit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountUninit;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountUninit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountUninit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountUninit;->$$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/AccountUninitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountUninit;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/AccountUninit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/AccountUninit;->$$delegate_0:Lorg/ton/block/AccountUninitTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbConstructor;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
