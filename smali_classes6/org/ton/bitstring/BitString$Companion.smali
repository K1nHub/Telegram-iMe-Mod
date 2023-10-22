.class public final Lorg/ton/bitstring/BitString$Companion;
.super Ljava/lang/Object;
.source "BitString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/bitstring/BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitString.kt\norg/ton/bitstring/BitString$Companion\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n970#2:158\n1041#2,3:159\n15#3:162\n15#3:178\n13714#4,3:163\n1864#5,3:166\n731#5,9:169\n*S KotlinDebug\n*F\n+ 1 BitString.kt\norg/ton/bitstring/BitString$Companion\n*L\n94#1:158\n94#1:159,3\n94#1:162\n146#1:178\n107#1:163,3\n121#1:166,3\n143#1:169,9\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/bitstring/BitString$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/bitstring/BitString$Companion;

    invoke-direct {v0}, Lorg/ton/bitstring/BitString$Companion;-><init>()V

    sput-object v0, Lorg/ton/bitstring/BitString$Companion;->$$INSTANCE:Lorg/ton/bitstring/BitString$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binary(Ljava/lang/String;)Lorg/ton/bitstring/BitString;
    .locals 6

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1

    .line 970
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 1041
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    move v4, v2

    .line 95
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1042
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bit: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    sget-object p1, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {p1, v0}, Lorg/ton/bitstring/BitString$Companion;->of(Ljava/util/Collection;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public final empty()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 79
    sget-object v0, Lorg/ton/bitstring/EmptyBitString;->INSTANCE:Lorg/ton/bitstring/EmptyBitString;

    return-object v0
.end method

.method public final of(I)Lorg/ton/bitstring/BitString;
    .locals 1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->of(I)Lorg/ton/bitstring/ByteBackedBitString;

    move-result-object p1

    return-object p1
.end method

.method public final of(Ljava/lang/String;)Lorg/ton/bitstring/BitString;
    .locals 5

    const-string v0, "hex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v3, 0x5f

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 133
    :goto_2
    invoke-static {p1}, Lkotlin/text/StringsKt;->asSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 134
    sget-object v3, Lorg/ton/bitstring/BitString$Companion$of$bits$1;->INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$1;

    invoke-static {p1, v3}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 135
    sget-object v3, Lorg/ton/bitstring/BitString$Companion$of$bits$2;->INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$2;

    invoke-static {p1, v3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 141
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->flattenSequenceOfIterable(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    .line 731
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 733
    :cond_4
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 734
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-nez v4, :cond_4

    .line 735
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 739
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 144
    :goto_4
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 15
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/bitstring/BitString$Companion;->of(Ljava/util/Collection;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public final of(Ljava/util/Collection;)Lorg/ton/bitstring/BitString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/ton/bitstring/BitString;"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    sget-object v0, Lorg/ton/bitstring/ByteBackedMutableBitString;->Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;->of(I)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object v0

    const/4 v1, 0x0

    .line 1865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->set(IZ)Z

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final of([BI)Lorg/ton/bitstring/BitString;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->of([BI)Lorg/ton/bitstring/ByteBackedBitString;

    move-result-object p1

    return-object p1
.end method

.method public final varargs of([Z)Lorg/ton/bitstring/BitString;
    .locals 6

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    sget-object v0, Lorg/ton/bitstring/ByteBackedMutableBitString;->Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    array-length v2, p1

    invoke-virtual {v0, v2}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;->of(I)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object v0

    .line 13715
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-boolean v4, p1, v1

    add-int/lit8 v5, v3, 0x1

    .line 108
    invoke-virtual {v0, v3, v4}, Lorg/ton/bitstring/ByteBackedMutableBitString;->set(IZ)Z

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_1

    :cond_2
    return-object v0
.end method
