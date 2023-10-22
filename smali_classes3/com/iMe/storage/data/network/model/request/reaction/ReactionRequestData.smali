.class public final Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;
.super Ljava/lang/Object;
.source "ReactionRequestData.kt"


# instance fields
.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;"
        }
    .end annotation
.end field

.field private final columnsNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "columns_number"
    .end annotation
.end field

.field private final file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

.field private final reactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttons"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    .line 11
    iput p6, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->copy(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;I)",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttons"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;-><init>(Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/request/reaction/UrlButton;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public final getColumnsNumber()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    return v0
.end method

.method public final getFile()Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    return-object v0
.end method

.method public final getReactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReactionRequestData(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->type:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageTypes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->file:Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->reactions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->buttons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", columnsNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;->columnsNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
