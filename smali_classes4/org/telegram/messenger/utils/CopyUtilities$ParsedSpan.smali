.class Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;
.super Ljava/lang/Object;
.source "CopyUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/CopyUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedSpan"
.end annotation


# instance fields
.field final type:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(I)V

    return-void
.end method
