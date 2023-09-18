.class public Lcom/otaliastudios/gif/strategy/DefaultStrategies;
.super Ljava/lang/Object;
.source "DefaultStrategies.java"


# direct methods
.method public static for720x1280()Lcom/otaliastudios/gif/strategy/DefaultStrategy;
    .locals 3

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 21
    invoke-static {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->exact(II)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    move-result-object v0

    const-wide/32 v1, 0x1e8480

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->bitRate(J)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 23
    invoke-virtual {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->frameRate(I)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 24
    invoke-virtual {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->keyFrameInterval(F)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->build()Lcom/otaliastudios/gif/strategy/DefaultStrategy;

    move-result-object v0

    return-object v0
.end method
