.class public final Lcom/smedialink/model/wallet/BottomSheetMenuItem;
.super Ljava/lang/Object;
.source "BottomSheetMenuItem.kt"


# instance fields
.field private final action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:I

.field private final isAvailable:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    .line 7
    iput-object p2, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-boolean p4, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/BottomSheetMenuItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/BottomSheetMenuItem;ILjava/lang/String;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)Lcom/smedialink/model/wallet/BottomSheetMenuItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->copy(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lcom/smedialink/model/wallet/BottomSheetMenuItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    return v0
.end method

.method public final copy(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lcom/smedialink/model/wallet/BottomSheetMenuItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lcom/smedialink/model/wallet/BottomSheetMenuItem;"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/BottomSheetMenuItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;

    iget v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    iget v3, p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    iget-boolean p1, p1, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BottomSheetMenuItem(icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->action:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/BottomSheetMenuItem;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
