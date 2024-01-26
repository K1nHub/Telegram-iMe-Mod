package kotlin.collections.unsigned;

import kotlin.ULongArray;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _UArrays.kt */
/* loaded from: classes4.dex */
public class UArraysKt___UArraysKt extends UArraysKt___UArraysJvmKt {
    /* renamed from: fill-K6DWlUc$default  reason: not valid java name */
    public static /* synthetic */ void m2042fillK6DWlUc$default(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = ULongArray.m2009getSizeimpl(jArr);
        }
        m2041fillK6DWlUc(jArr, j, i, i2);
    }

    /* renamed from: fill-K6DWlUc  reason: not valid java name */
    public static final void m2041fillK6DWlUc(long[] fill, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(fill, "$this$fill");
        ArraysKt___ArraysJvmKt.fill(fill, j, i, i2);
    }
}
