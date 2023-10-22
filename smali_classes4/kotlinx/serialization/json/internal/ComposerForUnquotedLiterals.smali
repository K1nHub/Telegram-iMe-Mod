.class public final Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;
.super Lkotlinx/serialization/json/internal/Composer;
.source "Composers.kt"


# instance fields
.field private final forceQuoting:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonWriter;Z)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonWriter;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    return-void
.end method


# virtual methods
.method public printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
