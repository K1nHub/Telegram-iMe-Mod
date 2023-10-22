.class public final Lorg/ton/block/MsgAddressExt$Companion;
.super Ljava/lang/Object;
.source "MsgAddressExt.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MsgAddressExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/MsgAddressExt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgAddressExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgAddressExt.kt\norg/ton/block/MsgAddressExt$Companion\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,42:1\n152#2,4:43\n*S KotlinDebug\n*F\n+ 1 MsgAddressExt.kt\norg/ton/block/MsgAddressExt$Companion\n*L\n22#1:43,4\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/MsgAddressExt$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/MsgAddressExtTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgAddressExt$Companion;

    invoke-direct {v0}, Lorg/ton/block/MsgAddressExt$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/MsgAddressExt$Companion;->$$INSTANCE:Lorg/ton/block/MsgAddressExt$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/MsgAddressExtTlbCombinator;->INSTANCE:Lorg/ton/block/MsgAddressExtTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/MsgAddressExt$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressExtTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgAddressExt$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgAddressExt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgAddressExt$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgAddressExt;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgAddressExt;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddressExt$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressExtTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgAddressExt;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgAddressExt;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddressExt$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressExtTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgAddressExt;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/MsgAddressExt;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/MsgAddressExt;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/AddrExtern;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/AddrNone;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    new-array v7, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/AddrExtern$$serializer;->INSTANCE:Lorg/ton/block/AddrExtern$$serializer;

    aput-object v0, v7, v4

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    new-array v8, v5, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v9, Lorg/ton/block/MsgAddressExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v10, "@type"

    invoke-direct {v9, v10}, Lorg/ton/block/MsgAddressExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v4

    const-string v9, "addr_none"

    .line 19
    invoke-direct {v0, v9, v1, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v7, v5

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/block/MsgAddressExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v0, v10}, Lorg/ton/block/MsgAddressExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.block.MsgAddressExt"

    move-object v0, v6

    move-object v4, v7

    .line 19
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lorg/ton/block/MsgAddressExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgAddressExt$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgAddressExt;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgAddressExt;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddressExt$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressExtTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public final tlbCodec()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/MsgAddressExt;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/ton/block/MsgAddressExtTlbCombinator;->INSTANCE:Lorg/ton/block/MsgAddressExtTlbCombinator;

    return-object v0
.end method
