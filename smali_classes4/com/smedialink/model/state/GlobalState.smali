.class public abstract Lcom/smedialink/model/state/GlobalState;
.super Ljava/lang/Object;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/state/GlobalState$Content;,
        Lcom/smedialink/model/state/GlobalState$NoInternet;,
        Lcom/smedialink/model/state/GlobalState$Unexpected;,
        Lcom/smedialink/model/state/GlobalState$Progress;,
        Lcom/smedialink/model/state/GlobalState$Empty;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final state:Ljava/lang/String;

.field private final title:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smedialink/model/state/GlobalState;->state:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/smedialink/model/state/GlobalState;->icon:I

    .line 18
    iput p3, p0, Lcom/smedialink/model/state/GlobalState;->title:I

    .line 19
    iput p4, p0, Lcom/smedialink/model/state/GlobalState;->description:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/model/state/GlobalState;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/smedialink/model/state/GlobalState;->description:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/smedialink/model/state/GlobalState;->icon:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/model/state/GlobalState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/smedialink/model/state/GlobalState;->title:I

    return v0
.end method
