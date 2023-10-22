package com.iMe.fork.utils;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CollectionsUtils.kt */
/* loaded from: classes3.dex */
public final class CollectionsUtilsKt {
    public static final <T> ArrayList<T> toArrayList(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return new ArrayList<>(list);
    }
}
