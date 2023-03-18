.class public final Lorg/koin/core/qualifier/StringQualifier;
.super Ljava/lang/Object;
.source "StringQualifier.kt"

# interfaces
.implements Lorg/koin/core/qualifier/Qualifier;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/koin/core/qualifier/StringQualifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/koin/core/qualifier/StringQualifier;

    invoke-virtual {p0}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
