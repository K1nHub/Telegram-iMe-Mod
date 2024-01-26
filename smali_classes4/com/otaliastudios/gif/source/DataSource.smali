.class public interface abstract Lcom/otaliastudios/gif/source/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/source/DataSource$Chunk;
    }
.end annotation


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getReadUs()J
.end method

.method public abstract getTrackFormat()Landroid/media/MediaFormat;
.end method

.method public abstract isDrained()Z
.end method

.method public abstract read(Lcom/otaliastudios/gif/source/DataSource$Chunk;)V
.end method

.method public abstract release()V
.end method

.method public abstract start()V
.end method
