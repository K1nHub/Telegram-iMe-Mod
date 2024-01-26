package com.iMe.storage.data.utils.extentions;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
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

    public static final Bundle toBundle(Map<String, ?> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Bundle bundle = new Bundle();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                bundle.putString(key, (String) value);
            } else if (value instanceof Integer) {
                bundle.putInt(key, ((Number) value).intValue());
            } else if (value instanceof Long) {
                bundle.putLong(key, ((Number) value).longValue());
            }
        }
        return bundle;
    }
}
