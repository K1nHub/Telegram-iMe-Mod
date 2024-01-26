.class public final Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;
.super Lcom/iMe/model/state/GlobalState$Empty;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState$Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworksSearchResult"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$NetworksSearchResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 113
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_empty_common:I

    .line 114
    sget v3, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    .line 115
    sget v4, Lorg/telegram/messenger/R$string;->wallet_network_type_dialog_search_empty:I

    const-string v1, "empty_token_search_result_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
