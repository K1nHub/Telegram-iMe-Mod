.class public final Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
.super Ljava/lang/Object;
.source "AnimatedSpannableDialogModel.kt"


# instance fields
.field private final animatedIcon:I

.field private final buttonText:Ljava/lang/CharSequence;

.field private final description:Landroid/text/SpannableStringBuilder;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    .line 8
    iput-object p2, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    .line 9
    iput-object p3, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    .line 10
    iput-object p4, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;ILjava/lang/Object;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->copy(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    return v0
.end method

.method public final component2()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final component3()Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final component4()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final copy(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    iget v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    iget v3, p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    iget-object v3, p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAnimatedIcon()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    return v0
.end method

.method public final getButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getDescription()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatedSpannableDialogModel(animatedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->animatedIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->description:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;->buttonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
