.class public final Lcom/iMe/model/state/GlobalState$NoInternet;
.super Lcom/iMe/model/state/GlobalState;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoInternet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$NoInternet;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 36
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_no_internet:I

    .line 37
    sget v3, Lorg/telegram/messenger/R$string;->common_no_network_state_title:I

    .line 38
    sget v4, Lorg/telegram/messenger/R$string;->common_no_network_state_description:I

    const-string v1, "no_internet_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
