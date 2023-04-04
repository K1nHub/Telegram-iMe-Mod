.class public final Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;
.super Ljava/lang/Object;
.source "MusicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isContentViewType(Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;I)Z
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;->isContentViewType(I)Z

    move-result p0

    return p0
.end method

.method private final isContentViewType(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
