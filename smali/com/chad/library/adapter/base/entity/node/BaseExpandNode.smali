.class public abstract Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;
.super Lcom/chad/library/adapter/base/entity/node/BaseNode;
.source "BaseExpandNode.kt"


# instance fields
.field private isExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return-void
.end method


# virtual methods
.method public final isExpanded()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return v0
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded:Z

    return-void
.end method
