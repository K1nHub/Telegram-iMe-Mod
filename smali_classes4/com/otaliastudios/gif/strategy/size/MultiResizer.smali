.class public Lcom/otaliastudios/gif/strategy/size/MultiResizer;
.super Ljava/lang/Object;
.source "MultiResizer.java"

# interfaces
.implements Lcom/otaliastudios/gif/strategy/size/Resizer;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/strategy/size/Resizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/strategy/size/MultiResizer;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addResizer(Lcom/otaliastudios/gif/strategy/size/Resizer;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/otaliastudios/gif/strategy/size/MultiResizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOutputSize(Lcom/otaliastudios/gif/strategy/size/Size;)Lcom/otaliastudios/gif/strategy/size/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/otaliastudios/gif/strategy/size/MultiResizer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/gif/strategy/size/Resizer;

    .line 35
    invoke-interface {v1, p1}, Lcom/otaliastudios/gif/strategy/size/Resizer;->getOutputSize(Lcom/otaliastudios/gif/strategy/size/Size;)Lcom/otaliastudios/gif/strategy/size/Size;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
