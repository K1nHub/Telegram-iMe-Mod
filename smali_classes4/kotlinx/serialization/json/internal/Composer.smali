.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "Composers.kt"


# instance fields
.field public final writer:Lkotlinx/serialization/json/internal/JsonWriter;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonWriter;)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return v0
.end method

.method public indent()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method

.method public nextItem()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method

.method public print(B)V
    .locals 3

    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonWriter;->writeLong(J)V

    return-void
.end method

.method public final print(C)V
    .locals 1

    .line 32
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->writeChar(C)V

    return-void
.end method

.method public print(D)V
    .locals 1

    .line 35
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonWriter;->writeLong(J)V

    return-void
.end method

.method public print(J)V
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonWriter;->writeLong(J)V

    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(S)V
    .locals 3

    .line 37
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonWriter;->writeLong(J)V

    return-void
.end method

.method public print(Z)V
    .locals 1

    .line 40
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/JsonWriter;->writeQuoted(Ljava/lang/String;)V

    return-void
.end method

.method protected final setWritingFirst(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method

.method public space()V
    .locals 0

    return-void
.end method

.method public unIndent()V
    .locals 0

    return-void
.end method
