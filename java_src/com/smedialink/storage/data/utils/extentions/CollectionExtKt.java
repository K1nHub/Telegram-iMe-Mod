package com.smedialink.storage.data.utils.extentions;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CollectionExt.kt */
/* loaded from: classes3.dex */
public final class CollectionExtKt {
    public static final <T> boolean isSingletonList(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.size() == 1;
    }

    public static final <T> void addOrRemove(Set<T> set, T t) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        if (set.contains(t)) {
            set.remove(t);
        } else {
            set.add(t);
        }
    }
}
