.class public Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ReactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/reaction/ReactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnUrlValidCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final position:I

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/reaction/ReactionView$$State;ILjava/lang/String;)V
    .locals 1

    .line 145
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onUrlValid"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 147
    iput p2, p0, Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;->position:I

    .line 148
    iput-object p3, p0, Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/reaction/ReactionView;)V
    .locals 2

    .line 153
    iget v0, p0, Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;->position:I

    iget-object v1, p0, Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;->url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/reaction/ReactionView;->onUrlValid(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/iMe/ui/reaction/ReactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionView$$State$OnUrlValidCommand;->apply(Lcom/iMe/ui/reaction/ReactionView;)V

    return-void
.end method
