.class final Lorg/ton/block/MessageRelaxedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MessageRelaxed.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MessageRelaxedTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MessageRelaxed<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageRelaxed.kt\norg/ton/block/MessageRelaxedTlbConstructor\n+ 2 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 3 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 4 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,68:1\n12#2:69\n12#2:85\n131#3:70\n132#3:80\n59#4,3:71\n59#4,3:74\n59#4,3:77\n52#4:82\n52#4:83\n52#4:84\n86#5:81\n*S KotlinDebug\n*F\n+ 1 MessageRelaxed.kt\norg/ton/block/MessageRelaxedTlbConstructor\n*L\n49#1:69\n45#1:85\n53#1:70\n53#1:80\n54#1:71,3\n55#1:74,3\n56#1:77,3\n62#1:82\n63#1:83\n64#1:84\n61#1:81\n*E\n"
.end annotation


# static fields
.field private static final eitherStateInitCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Either<",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/StateInit;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final maybeEitherCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Either<",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/StateInit;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static final referencedStateInitCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/StateInit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eitherXCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Either<",
            "TX;",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/MessageRelaxedTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/MessageRelaxedTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    sget-object v0, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    sget-object v1, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    invoke-static {v0, v1}, Lorg/ton/tlb/constructor/CellTlbConstructorKt;->tlbCodec(Lorg/ton/cell/Cell$Companion;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/MessageRelaxedTlbConstructor;->referencedStateInitCodec:Lorg/ton/tlb/TlbCodec;

    .line 45
    sget-object v2, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    .line 12
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v0}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 45
    invoke-virtual {v2, v1, v0}, Lorg/ton/block/Either$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/MessageRelaxedTlbConstructor;->eitherStateInitCodec:Lorg/ton/tlb/TlbCodec;

    .line 46
    sget-object v1, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/MessageRelaxedTlbConstructor;->maybeEitherCodec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message$_ {X:Type} info:CommonMsgInfoRelaxed init:(Maybe (Either StateInit ^StateInit)) body:(Either X ^X) = MessageRelaxed X;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    sget-object v0, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    .line 12
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Lorg/ton/block/Either$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/block/MessageRelaxedTlbConstructor;->eitherXCodec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/MessageRelaxedTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MessageRelaxed;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MessageRelaxed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/MessageRelaxed<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/ton/block/CommonMsgInfoRelaxed;->Companion:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Lorg/ton/block/CommonMsgInfoRelaxed;

    .line 63
    sget-object v1, Lorg/ton/block/MessageRelaxedTlbConstructor;->maybeEitherCodec:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Lorg/ton/block/Maybe;

    .line 64
    iget-object v2, p0, Lorg/ton/block/MessageRelaxedTlbConstructor;->eitherXCodec:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    check-cast p1, Lorg/ton/block/Either;

    .line 65
    new-instance v2, Lorg/ton/block/MessageRelaxed;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/MessageRelaxed;-><init>(Lorg/ton/block/CommonMsgInfoRelaxed;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/MessageRelaxed;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MessageRelaxedTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MessageRelaxed;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MessageRelaxed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/MessageRelaxed<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/ton/block/CommonMsgInfoRelaxed;->Companion:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MessageRelaxed;->getInfo()Lorg/ton/block/CommonMsgInfoRelaxed;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/ton/block/MessageRelaxedTlbConstructor;->maybeEitherCodec:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/MessageRelaxed;->getInit()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lorg/ton/block/MessageRelaxedTlbConstructor;->eitherXCodec:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/MessageRelaxed;->getBody()Lorg/ton/block/Either;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
