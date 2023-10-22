.class public interface abstract Lcom/otaliastudios/gif/sink/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# virtual methods
.method public abstract release()V
.end method

.method public abstract setFormat(Landroid/media/MediaFormat;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract stop()V
.end method

.method public abstract write(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
