.class public interface abstract Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/ChannelApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLOSE_REASON_CONNECTION_TIMEOUT:I = 0x4

.field public static final CLOSE_REASON_DISCONNECTED:I = 0x1

.field public static final CLOSE_REASON_LOCAL_CLOSE:I = 0x3

.field public static final CLOSE_REASON_NORMAL:I = 0x0

.field public static final CLOSE_REASON_REMOTE_CLOSE:I = 0x2


# virtual methods
.method public abstract onChannelClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end method

.method public abstract onInputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onOutputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method
