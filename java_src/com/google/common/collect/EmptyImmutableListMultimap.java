package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();

    private EmptyImmutableListMultimap() {
        super(ImmutableMap.m1050of(), 0);
    }
}
