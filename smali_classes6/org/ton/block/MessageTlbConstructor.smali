.class final Lorg/ton/block/MessageTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MessageTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Message<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Message.kt\norg/ton/block/MessageTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,73:1\n131#2:74\n132#2:84\n59#3,3:75\n59#3,3:78\n59#3,3:81\n52#3:86\n52#3:87\n52#3:88\n86#4:85\n*S KotlinDebug\n*F\n+ 1 Message.kt\norg/ton/block/MessageTlbConstructor\n*L\n53#1:74\n53#1:84\n54#1:75,3\n55#1:78,3\n56#1:81,3\n62#1:86\n63#1:87\n64#1:88\n61#1:85\n*E\n"
.end annotation


# static fields
.field private static final maybeEitherStateInitStateInit:Lorg/ton/tlb/TlbCodec;
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


# instance fields
.field private final eitherXX:Lorg/ton/tlb/TlbCodec;
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

    new-instance v0, Lorg/ton/block/MessageTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/MessageTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    sget-object v2, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/ton/block/Either$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/MessageTlbConstructor;->maybeEitherStateInitStateInit:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "message$_ {X:Type} info:CommonMsgInfo init:(Maybe (Either StateInit ^StateInit)) body:(Either X ^X) = Message X;"

    .line 43
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 49
    sget-object v0, Lorg/ton/block/Either;->Companion:Lorg/ton/block/Either$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/ton/block/EitherKt;->invoke(Lorg/ton/block/Either$Companion;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/block/MessageTlbConstructor;->eitherXX:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/ton/block/MessageTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Message;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/Message<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/ton/block/CommonMsgInfo;->Companion:Lorg/ton/block/CommonMsgInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Lorg/ton/block/CommonMsgInfo;

    .line 63
    sget-object v1, Lorg/ton/block/MessageTlbConstructor;->maybeEitherStateInitStateInit:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Lorg/ton/block/Maybe;

    .line 64
    iget-object v2, p0, Lorg/ton/block/MessageTlbConstructor;->eitherXX:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    check-cast p1, Lorg/ton/block/Either;

    .line 65
    new-instance v2, Lorg/ton/block/Message;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/Message;-><init>(Lorg/ton/block/CommonMsgInfo;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/ton/block/Message;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MessageTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Message;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/Message<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/ton/block/CommonMsgInfo;->Companion:Lorg/ton/block/CommonMsgInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Message;->getInfo()Lorg/ton/block/CommonMsgInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/ton/block/MessageTlbConstructor;->maybeEitherStateInitStateInit:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/Message;->getInit()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lorg/ton/block/MessageTlbConstructor;->eitherXX:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/Message;->getBody()Lorg/ton/block/Either;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
