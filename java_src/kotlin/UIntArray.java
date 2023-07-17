package kotlin;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: UIntArray.kt */
/* loaded from: classes4.dex */
public final class UIntArray implements Collection<UInt>, KMappedMarker {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1607constructorimpl(int[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1606constructorimpl(int i) {
        return m1607constructorimpl(new int[i]);
    }

    /* renamed from: get-pVg5ArA  reason: not valid java name */
    public static final int m1608getpVg5ArA(int[] iArr, int i) {
        return UInt.m1605constructorimpl(iArr[i]);
    }

    /* renamed from: set-VXSXFK8  reason: not valid java name */
    public static final void m1610setVXSXFK8(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m1609getSizeimpl(int[] iArr) {
        return iArr.length;
    }
}
