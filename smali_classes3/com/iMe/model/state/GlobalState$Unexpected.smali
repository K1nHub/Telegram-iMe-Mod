.class public final Lcom/iMe/model/state/GlobalState$Unexpected;
.super Lcom/iMe/model/state/GlobalState;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unexpected"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Unexpected;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 43
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_unexpected:I

    .line 44
    sget v3, Lorg/telegram/messenger/R$string;->common_unexpected_state_title:I

    .line 45
    sget v4, Lorg/telegram/messenger/R$string;->common_unexpected_state_description:I

    const-string v1, "unexpected_error_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
