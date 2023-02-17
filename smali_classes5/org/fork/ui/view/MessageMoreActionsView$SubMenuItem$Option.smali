.class public final Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;
.super Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# instance fields
.field private final iconResId:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    iput p2, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;

    iget-object v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    iget p1, p1, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->iconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
