.class Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;
.super Ljava/lang/Object;
.source "PaintTypeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/PaintTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Family"
.end annotation


# instance fields
.field fonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getRegular()Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;->subfamily:Ljava/lang/String;

    const-string v3, "Regular"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 191
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$Family;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface$FontData;

    :cond_2
    return-object v1
.end method
