.class public final Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;
.super Lcom/iMe/model/state/GlobalState$Empty;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState$Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenSearchStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TokenSearchStart;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 99
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_empty_common:I

    .line 100
    sget v3, Lorg/telegram/messenger/R$string;->token_search_empty_start_title:I

    .line 101
    sget v4, Lorg/telegram/messenger/R$string;->token_search_empty_start_subtitle:I

    const-string v1, "empty_token_search_start_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
