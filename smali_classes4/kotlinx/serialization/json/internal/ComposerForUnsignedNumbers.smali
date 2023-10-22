.class public final Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;
.super Lkotlinx/serialization/json/internal/Composer;
.source "Composers.kt"


# instance fields
.field private final forceQuoting:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonWriter;Z)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonWriter;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    return-void
.end method


# virtual methods
.method public print(B)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(I)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers$$ExternalSyntheticBackport1;->m(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers$$ExternalSyntheticBackport0;->m(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers$$ExternalSyntheticBackport3;->m(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers$$ExternalSyntheticBackport4;->m(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public print(S)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;->forceQuoting:Z

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p1}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
