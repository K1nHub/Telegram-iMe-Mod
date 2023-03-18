.class public final Lcom/smedialink/model/state/GlobalState$Empty$Twitter;
.super Lcom/smedialink/model/state/GlobalState$Empty;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/state/GlobalState$Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Twitter"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Twitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/state/GlobalState$Empty$Twitter;

    invoke-direct {v0}, Lcom/smedialink/model/state/GlobalState$Empty$Twitter;-><init>()V

    sput-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Twitter;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Twitter;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 82
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_empty_common:I

    .line 83
    sget v3, Lorg/telegram/messenger/R$string;->twitter_empty_state_title:I

    .line 84
    sget v4, Lorg/telegram/messenger/R$string;->twitter_empty_state_subtitle:I

    const-string v1, "empty_twitter_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
