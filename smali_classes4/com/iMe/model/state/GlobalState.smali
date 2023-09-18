.class public abstract Lcom/iMe/model/state/GlobalState;
.super Ljava/lang/Object;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/state/GlobalState$Content;,
        Lcom/iMe/model/state/GlobalState$Empty;,
        Lcom/iMe/model/state/GlobalState$NoInternet;,
        Lcom/iMe/model/state/GlobalState$Progress;,
        Lcom/iMe/model/state/GlobalState$Unexpected;
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/model/state/GlobalState;->state:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/iMe/model/state/GlobalState;->icon:I

    .line 23
    iput p3, p0, Lcom/iMe/model/state/GlobalState;->title:I

    .line 24
    iput p4, p0, Lcom/iMe/model/state/GlobalState;->description:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/state/GlobalState;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/model/state/GlobalState;->description:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/model/state/GlobalState;->icon:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/model/state/GlobalState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/model/state/GlobalState;->title:I

    return v0
.end method
