.class public final Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;
.super Ljava/lang/Object;
.source "HorizontalActionButtonItem.kt"


# instance fields
.field private final iconRes:I

.field private final isEnabled:Z

.field private final onClickAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final textRes:I


# direct methods
.method public constructor <init>(IIZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClickAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    .line 9
    iput p2, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    .line 10
    iput-boolean p3, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    .line 11
    iput-object p4, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->onClickAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;IIZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->onClickAction:Lkotlin/jvm/functions/Function0;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->copy(IIZLkotlin/jvm/functions/Function0;)Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    return v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->onClickAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(IIZLkotlin/jvm/functions/Function0;)Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;"
        }
    .end annotation

    const-string v0, "onClickAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 18
    :cond_0
    const-class v1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.smedialink.model.wallet.home.HorizontalActionButtonItem"

    .line 19
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 20
    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    iget v3, p1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    iget v3, p1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    iget-boolean p1, p1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getIconRes()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    return v0
.end method

.method public final getOnClickAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->onClickAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getTextRes()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalActionButtonItem(iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->textRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onClickAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;->onClickAction:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
