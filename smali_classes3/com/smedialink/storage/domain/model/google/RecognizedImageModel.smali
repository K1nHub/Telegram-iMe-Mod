.class public final Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;
.super Ljava/lang/Object;
.source "RecognizedImageModel.kt"


# instance fields
.field private final confidence:I

.field private final recognizedObject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "recognizedObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;Ljava/lang/String;IILjava/lang/Object;)Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->copy(Ljava/lang/String;I)Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;
    .locals 1

    const-string v0, "recognizedObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    iget p1, p1, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfidence()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    return v0
.end method

.method public final getRecognizedObject()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizedImageModel(recognizedObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->recognizedObject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/google/RecognizedImageModel;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
