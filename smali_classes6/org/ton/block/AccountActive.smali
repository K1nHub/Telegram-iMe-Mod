.class public final Lorg/ton/block/AccountActive;
.super Ljava/lang/Object;
.source "AccountActive.kt"

# interfaces
.implements Lorg/ton/block/AccountState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountActive$$serializer;,
        Lorg/ton/block/AccountActive$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountActive.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountActive.kt\norg/ton/block/AccountActive\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,51:1\n82#2,3:52\n*S KotlinDebug\n*F\n+ 1 AccountActive.kt\norg/ton/block/AccountActive\n*L\n24#1:52,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/AccountActive$Companion;


# instance fields
.field private final value:Lorg/ton/block/StateInit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/AccountActive$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountActive$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountActive;->Companion:Lorg/ton/block/AccountActive$Companion;

    return-void
.end method

.method private synthetic constructor <init>(Lorg/ton/block/StateInit;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    return-void
.end method

.method public static final synthetic box-impl(Lorg/ton/block/StateInit;)Lorg/ton/block/AccountActive;
    .locals 1

    new-instance v0, Lorg/ton/block/AccountActive;

    invoke-direct {v0, p0}, Lorg/ton/block/AccountActive;-><init>(Lorg/ton/block/StateInit;)V

    return-object v0
.end method

.method public static constructor-impl(Lorg/ton/block/StateInit;)Lorg/ton/block/StateInit;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Lorg/ton/block/StateInit;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/ton/block/AccountActive;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/ton/block/AccountActive;

    invoke-virtual {p1}, Lorg/ton/block/AccountActive;->unbox-impl()Lorg/ton/block/StateInit;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(Lorg/ton/block/StateInit;)I
    .locals 0

    invoke-virtual {p0}, Lorg/ton/block/StateInit;->hashCode()I

    move-result p0

    return p0
.end method

.method public static print-impl(Lorg/ton/block/StateInit;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 2

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_active"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lorg/ton/block/StateInit;->print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, p0, v1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public static toString-impl(Lorg/ton/block/StateInit;)Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {p0}, Lorg/ton/block/AccountActive;->box-impl(Lorg/ton/block/StateInit;)Lorg/ton/block/AccountActive;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    invoke-static {v0, p1}, Lorg/ton/block/AccountActive;->equals-impl(Lorg/ton/block/StateInit;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    invoke-static {v0}, Lorg/ton/block/AccountActive;->hashCode-impl(Lorg/ton/block/StateInit;)I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    invoke-static {v0, p1}, Lorg/ton/block/AccountActive;->print-impl(Lorg/ton/block/StateInit;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    invoke-static {v0}, Lorg/ton/block/AccountActive;->toString-impl(Lorg/ton/block/StateInit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Lorg/ton/block/StateInit;
    .locals 1

    iget-object v0, p0, Lorg/ton/block/AccountActive;->value:Lorg/ton/block/StateInit;

    return-object v0
.end method
