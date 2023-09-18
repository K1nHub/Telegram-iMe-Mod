package com.google.common.util.concurrent;
/* loaded from: classes4.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(I i) throws Exception;
}
