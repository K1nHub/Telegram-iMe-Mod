.class public final Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;
.super Lorg/telegram/messenger/IMapsProvider$PatternItem;
.source "IMapsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/IMapsProvider$PatternItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dash"
.end annotation


# instance fields
.field public final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lorg/telegram/messenger/IMapsProvider$PatternItem;-><init>()V

    .line 173
    iput p1, p0, Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;->length:I

    return-void
.end method
