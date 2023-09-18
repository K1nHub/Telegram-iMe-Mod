.class public Lorg/telegram/ui/Components/Paint/Brush$Radial;
.super Lorg/telegram/ui/Components/Paint/Brush;
.source "Brush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Brush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Radial"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Brush;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .line 93
    sget v0, Lorg/telegram/messenger/R$raw;->photo_pen:I

    return v0
.end method
