.class public Lorg/telegram/ui/Components/Paint/PersistColorPalette;
.super Ljava/lang/Object;
.source "PersistColorPalette.java"


# static fields
.field private static final DEFAULT_COLORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MARKER_COLOR:Ljava/lang/Integer;

.field private static instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;


# instance fields
.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentAlignment:I

.field private currentTextType:I

.field private currentTypeface:Ljava/lang/String;

.field private currentWeight:F

.field private fillShapes:Z

.field private mConfig:Landroid/content/SharedPreferences;

.field private pendingChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Integer;

    const/high16 v1, -0x1000000

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, -0x1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, -0xe26601

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, -0xfc432c

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, -0xc645d5

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, -0x65cf1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, -0x591ea

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const v1, -0x17cabc

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const v1, -0x4db201

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const v1, -0x285f84

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const v1, -0x538cb4

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const v1, -0x6faed4

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const v1, -0xacd1e1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const v1, -0x7e7e7f

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    const v0, -0xf57b01

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MARKER_COLOR:Ljava/lang/Integer;

    new-array v0, v2, [Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    .line 35
    sput-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    .line 50
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo_color_palette_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "brush"

    .line 51
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "weight"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    .line 53
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "typeface"

    const-string v2, "roboto"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "text_alignment"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    .line 55
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "text_type"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    .line 56
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "fill_shapes"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->loadColors()V

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xe

    if-ge p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Color palette index should be in range 0 ... 14"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 2

    .line 62
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;-><init>(I)V

    aput-object v1, v0, p0

    .line 65
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->instances:[Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private loadColors()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_MARKER_COLOR:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "color_marker"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    sget-object v1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    return-void
.end method

.method public getColor(I)I
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->checkIndex(I)V

    if-ltz p1, :cond_1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-ltz p1, :cond_2

    .line 145
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 148
    :cond_2
    sget-object p1, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getCurrentAlignment()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    return v0
.end method

.method public getCurrentTextType()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    return v0
.end method

.method public getCurrentTypeface()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeight()F
    .locals 1

    .line 104
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    return v0
.end method

.method public getFillShapes()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    return v0
.end method

.method public getWeight(Ljava/lang/String;F)F
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public saveColors()V
    .locals 5

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public selectColor(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColorIndex(I)V

    goto :goto_2

    .line 158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 165
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 167
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :cond_3
    :goto_2
    return-void
.end method

.method public selectColorIndex(I)V
    .locals 5

    if-ltz p1, :cond_1

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->colors:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :goto_2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    sget-object v4, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 181
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_4

    .line 182
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 185
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_5
    sget-object v0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->DEFAULT_COLORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 189
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_7

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->pendingChange:Ljava/util/List;

    :cond_7
    return-void
.end method

.method public setCurrentAlignment(I)V
    .locals 2

    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentAlignment:I

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_alignment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentBrush(I)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "brush"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentTextType(I)V
    .locals 2

    .line 73
    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTextType:I

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentTypeface(Ljava/lang/String;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentTypeface:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "typeface"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentWeight(F)V
    .locals 2

    .line 108
    iput p1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->currentWeight:F

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "weight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWeight(Ljava/lang/String;F)V
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toggleFillShapes()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->fillShapes:Z

    const-string v2, "fill_shapes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
