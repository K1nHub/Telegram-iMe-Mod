.class public final Lcom/iMe/model/state/GlobalState$Empty$Common;
.super Lcom/iMe/model/state/GlobalState$Empty;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState$Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Empty$Common;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 64
    sget v2, Lorg/telegram/messenger/R$raw;->fork_state_empty_common:I

    .line 65
    sget v3, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    .line 66
    sget v4, Lorg/telegram/messenger/R$string;->common_empty_state_description:I

    const-string v1, "empty_content_state"

    const/4 v5, 0x0

    move-object v0, p0

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
