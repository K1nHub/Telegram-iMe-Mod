.class public interface abstract Lcom/coremedia/iso/boxes/Box;
.super Ljava/lang/Object;
.source "Box.java"


# virtual methods
.method public abstract getBox(Ljava/nio/channels/WritableByteChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSize()J
.end method

.method public abstract setParent(Lcom/coremedia/iso/boxes/Container;)V
.end method
