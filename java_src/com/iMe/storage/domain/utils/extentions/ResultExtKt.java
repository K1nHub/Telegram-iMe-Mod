package com.iMe.storage.domain.utils.extentions;

import com.iMe.storage.domain.model.Result;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ResultExt.kt */
/* loaded from: classes3.dex */
public final class ResultExtKt {
    public static final boolean isAllSuccess(List<? extends Result<?>> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!(((Result) it.next()) instanceof Result.Success)) {
                return false;
            }
        }
        return true;
    }
}
