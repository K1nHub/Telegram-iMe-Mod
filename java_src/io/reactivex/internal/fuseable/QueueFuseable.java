package io.reactivex.internal.fuseable;
/* loaded from: classes6.dex */
public interface QueueFuseable<T> extends SimpleQueue<T> {
    int requestFusion(int i);
}
