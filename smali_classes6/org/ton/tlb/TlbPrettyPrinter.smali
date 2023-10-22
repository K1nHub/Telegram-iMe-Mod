.class public final Lorg/ton/tlb/TlbPrettyPrinter;
.super Ljava/lang/Object;
.source "TlbPrettyPrinter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlbPrettyPrinter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation


# instance fields
.field private final dummy:Z

.field private indent:I

.field private level:I

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;-><init>(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "stringBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;-><init>(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    const-string v0, "stringBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lorg/ton/tlb/TlbPrettyPrinter;-><init>(Ljava/lang/StringBuilder;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;IZ)V
    .locals 1

    const-string v0, "stringBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 7
    iput p2, p0, Lorg/ton/tlb/TlbPrettyPrinter;->indent:I

    .line 8
    iput-boolean p3, p0, Lorg/ton/tlb/TlbPrettyPrinter;->dummy:Z

    return-void
.end method

.method private final append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->dummy:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public static synthetic close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->close(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 24
    iput v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    .line 25
    invoke-direct {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TlbPrettyPrinter is already closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    if-eqz p1, :cond_1

    .line 37
    iget v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    .line 38
    instance-of v0, p1, Lorg/ton/tlb/TlbObject;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/ton/tlb/TlbPrettyPrinter;->newLine()V

    :cond_0
    const-string v0, " "

    .line 41
    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 42
    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->type(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 43
    iget p1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    :cond_1
    return-object p0
.end method

.method public final field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 48
    instance-of v0, p2, Lorg/ton/tlb/TlbObject;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/ton/tlb/TlbPrettyPrinter;->newLine()V

    :cond_0
    const/16 v0, 0x20

    .line 51
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 52
    invoke-virtual {p0, p2}, Lorg/ton/tlb/TlbPrettyPrinter;->type(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    :cond_1
    return-object p0
.end method

.method public final newLine()V
    .locals 2

    .line 29
    iget v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->indent:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->dummy:Z

    if-nez v0, :cond_1

    .line 30
    iget v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    if-lez v0, :cond_0

    const-string v0, "\n"

    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    :cond_0
    iget v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    iget v1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->indent:I

    mul-int/2addr v0, v1

    const-string v1, " "

    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    :cond_1
    return-void
.end method

.method public final open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x28

    .line 18
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 19
    iget p1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ton/tlb/TlbPrettyPrinter;->level:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final type(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    if-eqz p1, :cond_4

    .line 59
    :try_start_0
    instance-of v0, p1, Lorg/ton/tlb/TlbObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/ton/tlb/TlbObject;

    invoke-interface {p1, p0}, Lorg/ton/tlb/TlbObject;->print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    goto :goto_1

    .line 61
    :cond_0
    iget-boolean v0, p0, Lorg/ton/tlb/TlbPrettyPrinter;->dummy:Z

    if-nez v0, :cond_4

    .line 63
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    goto :goto_1

    .line 64
    :cond_2
    instance-of v0, p1, Lorg/ton/bitstring/BitString;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    goto :goto_1

    .line 65
    :cond_3
    invoke-direct {p0, p1}, Lorg/ton/tlb/TlbPrettyPrinter;->append(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t print TL-B:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ton/tlb/TlbPrettyPrinter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "<-- HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_1
    return-object p0
.end method
