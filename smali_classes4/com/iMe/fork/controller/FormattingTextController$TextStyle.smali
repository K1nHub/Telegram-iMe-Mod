.class public final Lcom/iMe/fork/controller/FormattingTextController$TextStyle;
.super Ljava/lang/Object;
.source "FormattingTextController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/controller/FormattingTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextStyle"
.end annotation


# instance fields
.field private final endIndexWord:I

.field private final listFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final startIndexWord:I

.field private summaryFlags:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    .line 282
    iput p2, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    .line 283
    iput p3, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    .line 284
    iput-object p4, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    .line 285
    iput-object p5, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    iget v3, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    iget v3, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    iget v3, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEndIndexWord()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    return v0
.end method

.method public final getListFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    return-object v0
.end method

.method public final getStartIndexWord()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    return v0
.end method

.method public final getSummaryFlags()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSummaryFlags(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iput-object p1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextStyle(startIndexWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->startIndexWord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndexWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->endIndexWord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", summaryFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->summaryFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/controller/FormattingTextController$TextStyle;->listFlags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
