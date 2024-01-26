.class public final Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;
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
    name = "IntMsgInfoRelaxed"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonMsgInfoRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed\n+ 2 MsgAddressExt.kt\norg/ton/block/MsgAddressExtKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,155:1\n13#2:156\n13#2:157\n86#3,2:158\n82#3,3:160\n88#3:163\n*S KotlinDebug\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed\n*L\n22#1:156\n40#1:157\n45#1:158,2\n46#1:160,3\n45#1:163\n*E\n"
.end annotation


# instance fields
.field private final bounce:Z

.field private final bounced:Z

.field private final createdAt:I

.field private final createdLt:J

.field private final dest:Lorg/ton/block/MsgAddressInt;

.field private final fwdFee:Lorg/ton/block/Coins;

.field private final ihrDisabled:Z

.field private final ihrFee:Lorg/ton/block/Coins;

.field private final src:Lorg/ton/block/MsgAddress;

.field private final value:Lorg/ton/block/CurrencyCollection;


# direct methods
.method private constructor <init>(ZZZLorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JI)V
    .locals 1

    const-string v0, "src"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ihrFee"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwdFee"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    .line 20
    iput-boolean p2, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    .line 21
    iput-boolean p3, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    .line 22
    iput-object p4, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    .line 23
    iput-object p5, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    .line 24
    iput-object p6, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    .line 25
    iput-object p7, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    .line 26
    iput-object p8, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    .line 27
    iput-wide p9, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    .line 28
    iput p11, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZLorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;-><init>(ZZZLorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    iget-boolean v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    iget-boolean v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    iget-boolean v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    iget-wide v5, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

    iget p1, p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBounce()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    return v0
.end method

.method public final getBounced()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    return v0
.end method

.method public final getCreatedAt-pVg5ArA()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

    return v0
.end method

.method public final getCreatedLt-s-VKNKU()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    return-wide v0
.end method

.method public final getDest()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public final getFwdFee()Lorg/ton/block/Coins;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getIhrDisabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    return v0
.end method

.method public final getIhrFee()Lorg/ton/block/Coins;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getSrc()Lorg/ton/block/MsgAddress;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    return-object v0
.end method

.method public final getValue()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "int_msg_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ihr_disabled"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 48
    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounce:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bounce"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 49
    iget-boolean v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->bounced:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bounced"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 50
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->src:Lorg/ton/block/MsgAddress;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 51
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->dest:Lorg/ton/block/MsgAddressInt;

    const-string v2, "dest"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 52
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->value:Lorg/ton/block/CurrencyCollection;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 53
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->ihrFee:Lorg/ton/block/Coins;

    const-string v2, "ihr_fee"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget-object v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->fwdFee:Lorg/ton/block/Coins;

    const-string v2, "fwd_fee"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 55
    iget-wide v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "created_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    iget v1, p0, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->createdAt:I

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

    .line 60
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
