.class public final Lorg/ton/cell/Cell$Companion;
.super Ljava/lang/Object;
.source "Cell.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cell.kt\norg/ton/cell/Cell$Companion\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n135#2,2:114\n135#2,2:117\n16#3:116\n1855#4,2:119\n*S KotlinDebug\n*F\n+ 1 Cell.kt\norg/ton/cell/Cell$Companion\n*L\n58#1:114,2\n64#1:117,2\n59#1:116\n86#1:119,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/cell/Cell$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/cell/Cell$Companion;

    invoke-direct {v0}, Lorg/ton/cell/Cell$Companion;-><init>()V

    sput-object v0, Lorg/ton/cell/Cell$Companion;->$$INSTANCE:Lorg/ton/cell/Cell$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic toString$default(Lorg/ton/cell/Cell$Companion;Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ton/cell/Cell$Companion;->toString(Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final empty()Lorg/ton/cell/Cell;
    .locals 1

    .line 55
    sget-object v0, Lorg/ton/cell/EmptyCell;->INSTANCE:Lorg/ton/cell/EmptyCell;

    return-object v0
.end method

.method public final toString(Lorg/ton/cell/Cell;)Ljava/lang/String;
    .locals 7

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    sget-object v1, Lorg/ton/cell/Cell$Companion;->$$INSTANCE:Lorg/ton/cell/Cell$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lorg/ton/cell/Cell$Companion;->toString$default(Lorg/ton/cell/Cell$Companion;Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString(Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 4

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appendable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 81
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/cell/CellType;->isExotic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/16 v0, 0x20

    .line 83
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 85
    :cond_0
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 86
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object p1

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/cell/Cell;

    const/16 v1, 0xa

    .line 87
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 88
    sget-object v1, Lorg/ton/cell/Cell$Companion;->$$INSTANCE:Lorg/ton/cell/Cell$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lorg/ton/cell/Cell$Companion;->toString(Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
