.class public final Lcom/fxn/parser/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.kt"


# instance fields
.field private badgeVisible:Z

.field private final checked:Z

.field private custom_font:I

.field private disabled_icon_color:I

.field private final enabled:Z

.field private horizontal_padding:F

.field private final icon:I

.field private final iconColor:I

.field private icon_padding:F

.field private icon_size:F

.field private final id:I

.field private tabBackground:I

.field private final title:Ljava/lang/CharSequence;

.field private title_size:F

.field private vertical_padding:F


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;IZIZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/fxn/parser/MenuItem;->id:I

    .line 10
    iput-object p2, p0, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    .line 11
    iput p3, p0, Lcom/fxn/parser/MenuItem;->icon:I

    .line 12
    iput-boolean p4, p0, Lcom/fxn/parser/MenuItem;->enabled:Z

    .line 13
    iput p5, p0, Lcom/fxn/parser/MenuItem;->iconColor:I

    .line 14
    iput-boolean p6, p0, Lcom/fxn/parser/MenuItem;->checked:Z

    const p1, -0x777778

    .line 19
    iput p1, p0, Lcom/fxn/parser/MenuItem;->tabBackground:I

    .line 25
    iput p1, p0, Lcom/fxn/parser/MenuItem;->disabled_icon_color:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/fxn/parser/MenuItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/fxn/parser/MenuItem;

    iget v1, p0, Lcom/fxn/parser/MenuItem;->id:I

    iget v3, p1, Lcom/fxn/parser/MenuItem;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/fxn/parser/MenuItem;->icon:I

    iget v3, p1, Lcom/fxn/parser/MenuItem;->icon:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->enabled:Z

    iget-boolean v3, p1, Lcom/fxn/parser/MenuItem;->enabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/fxn/parser/MenuItem;->iconColor:I

    iget v3, p1, Lcom/fxn/parser/MenuItem;->iconColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->checked:Z

    iget-boolean p1, p1, Lcom/fxn/parser/MenuItem;->checked:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBadgeVisible()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/fxn/parser/MenuItem;->badgeVisible:Z

    return v0
.end method

.method public final getChecked()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/fxn/parser/MenuItem;->checked:Z

    return v0
.end method

.method public final getCustom_font()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/fxn/parser/MenuItem;->custom_font:I

    return v0
.end method

.method public final getDisabled_icon_color()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/fxn/parser/MenuItem;->disabled_icon_color:I

    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/fxn/parser/MenuItem;->enabled:Z

    return v0
.end method

.method public final getHorizontal_padding()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/fxn/parser/MenuItem;->horizontal_padding:F

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/fxn/parser/MenuItem;->icon:I

    return v0
.end method

.method public final getIconColor()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/fxn/parser/MenuItem;->iconColor:I

    return v0
.end method

.method public final getIcon_padding()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/fxn/parser/MenuItem;->icon_padding:F

    return v0
.end method

.method public final getIcon_size()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/fxn/parser/MenuItem;->icon_size:F

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/fxn/parser/MenuItem;->id:I

    return v0
.end method

.method public final getTabBackground()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/fxn/parser/MenuItem;->tabBackground:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitle_size()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/fxn/parser/MenuItem;->title_size:F

    return v0
.end method

.method public final getVertical_padding()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/fxn/parser/MenuItem;->vertical_padding:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/fxn/parser/MenuItem;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fxn/parser/MenuItem;->icon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fxn/parser/MenuItem;->iconColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->checked:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final setBadgeVisible(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/fxn/parser/MenuItem;->badgeVisible:Z

    return-void
.end method

.method public final setCustom_font(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/fxn/parser/MenuItem;->custom_font:I

    return-void
.end method

.method public final setDisabled_icon_color(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/fxn/parser/MenuItem;->disabled_icon_color:I

    return-void
.end method

.method public final setHorizontal_padding(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/fxn/parser/MenuItem;->horizontal_padding:F

    return-void
.end method

.method public final setIcon_padding(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/fxn/parser/MenuItem;->icon_padding:F

    return-void
.end method

.method public final setIcon_size(F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/fxn/parser/MenuItem;->icon_size:F

    return-void
.end method

.method public final setTabBackground(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/fxn/parser/MenuItem;->tabBackground:I

    return-void
.end method

.method public final setTitle_size(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/fxn/parser/MenuItem;->title_size:F

    return-void
.end method

.method public final setVertical_padding(F)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/fxn/parser/MenuItem;->vertical_padding:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fxn/parser/MenuItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fxn/parser/MenuItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fxn/parser/MenuItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fxn/parser/MenuItem;->iconColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/fxn/parser/MenuItem;->checked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
