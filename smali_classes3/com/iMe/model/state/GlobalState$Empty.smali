.class public abstract Lcom/iMe/model/state/GlobalState$Empty;
.super Lcom/iMe/model/state/GlobalState;
.source "GlobalState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/state/GlobalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/state/GlobalState$Empty$Balance;,
        Lcom/iMe/model/state/GlobalState$Empty$Common;,
        Lcom/iMe/model/state/GlobalState$Empty$Staking;,
        Lcom/iMe/model/state/GlobalState$Empty$Twitter;,
        Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final state:Ljava/lang/String;

.field private final title:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/state/GlobalState;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    iput-object p1, p0, Lcom/iMe/model/state/GlobalState$Empty;->state:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/iMe/model/state/GlobalState$Empty;->icon:I

    .line 55
    iput p3, p0, Lcom/iMe/model/state/GlobalState$Empty;->title:I

    .line 56
    iput p4, p0, Lcom/iMe/model/state/GlobalState$Empty;->description:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/state/GlobalState$Empty;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/iMe/model/state/GlobalState$Empty;->description:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/iMe/model/state/GlobalState$Empty;->icon:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/model/state/GlobalState$Empty;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/iMe/model/state/GlobalState$Empty;->title:I

    return v0
.end method