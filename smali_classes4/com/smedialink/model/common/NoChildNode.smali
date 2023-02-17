.class public Lcom/smedialink/model/common/NoChildNode;
.super Lcom/chad/library/adapter/base/entity/node/BaseNode;
.source "NoChildNode.kt"


# instance fields
.field private final childNode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private final itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildNode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/common/NoChildNode;->childNode:Ljava/util/List;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/common/NoChildNode;->itemType:I

    return v0
.end method
