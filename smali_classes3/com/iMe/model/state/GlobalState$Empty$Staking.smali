.class public final Lcom/iMe/model/state/GlobalState$Empty$Staking;
.super Lcom/iMe/model/state/GlobalState$Empty;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState$Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staking"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Staking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Empty$Staking;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Empty$Staking;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Staking;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 78
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_empty_balance:I

    .line 79
    sget v3, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    .line 80
    sget v4, Lorg/telegram/messenger/R$string;->staking_programmes_empty_state_description:I

    const-string v1, "empty_staking_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
