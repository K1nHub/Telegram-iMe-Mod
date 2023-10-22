.class public final Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;
.super Lcom/iMe/ui/custom/ImageHeaderView$IconData;
.source "ImageHeaderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/custom/ImageHeaderView$IconData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceDrawable"
.end annotation


# instance fields
.field private final resId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/ImageHeaderView$IconData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;

    iget v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    iget p1, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getResId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceDrawable(resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
