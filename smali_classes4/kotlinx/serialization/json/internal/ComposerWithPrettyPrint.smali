.class public final Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;
.super Lkotlinx/serialization/json/internal/Composer;
.source "Composers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composers.kt\nkotlinx/serialization/json/internal/ComposerWithPrettyPrint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation


# instance fields
.field private final json:Lkotlinx/serialization/json/Json;

.field private level:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonWriter;)V

    .line 72
    iput-object p2, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public indent()V
    .locals 2

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->setWritingFirst(Z)V

    .line 78
    iget v1, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->level:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->level:I

    return-void
.end method

.method public nextItem()V
    .locals 3

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->setWritingFirst(Z)V

    const-string v1, "\n"

    .line 87
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    .line 88
    iget v1, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->level:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrintIndent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public space()V
    .locals 1

    const/16 v0, 0x20

    .line 92
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    return-void
.end method

.method public unIndent()V
    .locals 1

    .line 82
    iget v0, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;->level:I

    return-void
.end method
