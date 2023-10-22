.class public final Lorg/ton/tlb/TlbObject$DefaultImpls;
.super Ljava/lang/Object;
.source "TlbObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/TlbObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lorg/ton/tlb/TlbPrettyPrinter;

    invoke-direct {p1}, Lorg/ton/tlb/TlbPrettyPrinter;-><init>()V

    :cond_0
    invoke-interface {p0, p1}, Lorg/ton/tlb/TlbObject;->print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: print"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
