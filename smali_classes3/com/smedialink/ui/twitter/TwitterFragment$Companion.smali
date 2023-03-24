.class public final Lcom/smedialink/ui/twitter/TwitterFragment$Companion;
.super Ljava/lang/Object;
.source "TwitterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/twitter/TwitterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/twitter/TwitterFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(JJLjava/lang/String;)Lcom/smedialink/ui/twitter/TwitterFragment;
    .locals 7

    const-string v0, "twitterUserNickname"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/smedialink/ui/twitter/TwitterFragment;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/twitter/TwitterFragment;-><init>(JJLjava/lang/String;)V

    return-object v0
.end method
