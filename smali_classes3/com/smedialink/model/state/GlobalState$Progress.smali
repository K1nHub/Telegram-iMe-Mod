.class public final Lcom/smedialink/model/state/GlobalState$Progress;
.super Lcom/smedialink/model/state/GlobalState;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/state/GlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-direct {v0}, Lcom/smedialink/model/state/GlobalState$Progress;-><init>()V

    sput-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 47
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_progress:I

    .line 48
    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    .line 49
    sget v4, Lorg/telegram/messenger/R$string;->common_progress_state_description:I

    const-string v1, "progress_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/state/GlobalState;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
