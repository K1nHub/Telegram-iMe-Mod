.class public final Lcom/iMe/model/state/GlobalState$Content;
.super Lcom/iMe/model/state/GlobalState;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/state/GlobalState$Content;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/state/GlobalState$Content;

    invoke-direct {v0}, Lcom/iMe/model/state/GlobalState$Content;-><init>()V

    sput-object v0, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-string v1, "content_state"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
