.class public final Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;
.super Ljava/lang/Object;
.source "CommonMsgInfoRelaxed.kt"

# interfaces
.implements Lorg/ton/block/CommonMsgInfoRelaxed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/CommonMsgInfoRelaxed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtOutMsgInfoRelaxed"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonMsgInfoRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,155:1\n86#2,2:156\n82#2,3:158\n88#2:161\n*S KotlinDebug\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed\n*L\n70#1:156,2\n71#1:158,3\n70#1:161\n*E\n"
.end annotation


# instance fields
.field private final createdAt:I

.field private final createdLt:J

.field private final dest:Lorg/ton/block/MsgAddressExt;

.field private final src:Lorg/ton/block/MsgAddress;


# direct methods
.method private constructor <init>(Lorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressExt;JI)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    .line 66
    iput-object p2, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    .line 67
    iput-wide p3, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    .line 68
    iput p5, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressExt;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;-><init>(Lorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressExt;JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    iget-wide v5, p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    iget p1, p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreatedAt-pVg5ArA()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    return v0
.end method

.method public final getCreatedLt-s-VKNKU()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    return-wide v0
.end method

.method public final getDest()Lorg/ton/block/MsgAddressExt;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    return-object v0
.end method

.method public final getSrc()Lorg/ton/block/MsgAddress;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext_out_msg_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 73
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressExt;

    const-string v2, "dest"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 74
    iget-wide v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "created_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 75
    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->createdAt:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "created_at"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
