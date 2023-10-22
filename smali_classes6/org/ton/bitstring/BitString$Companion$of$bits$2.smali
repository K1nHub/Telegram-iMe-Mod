.class final Lorg/ton/bitstring/BitString$Companion$of$bits$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BitString.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/bitstring/BitString$Companion;->of(Ljava/lang/String;)Lorg/ton/bitstring/BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Character;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitString.kt\norg/ton/bitstring/BitString$Companion$of$bits$2\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,157:1\n970#2:158\n1041#2,3:159\n*S KotlinDebug\n*F\n+ 1 BitString.kt\norg/ton/bitstring/BitString$Companion$of$bits$2\n*L\n139#1:158\n139#1:159,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/bitstring/BitString$Companion$of$bits$2;

    invoke-direct {v0}, Lorg/ton/bitstring/BitString$Companion$of$bits$2;-><init>()V

    sput-object v0, Lorg/ton/bitstring/BitString$Companion$of$bits$2;->INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/BitString$Companion$of$bits$2;->invoke(C)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(C)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 136
    invoke-static {p1, v0}, Lkotlin/text/CharsKt;->digitToInt(CI)I

    move-result p1

    const/4 v0, 0x2

    .line 137
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(this, checkRadix(radix))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x30

    .line 138
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 1041
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 139
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1042
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
