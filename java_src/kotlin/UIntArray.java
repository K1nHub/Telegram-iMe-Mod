package kotlin;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: UIntArray.kt */
/* loaded from: classes4.dex */
public final class UIntArray implements Collection<UInt>, KMappedMarker {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1582constructorimpl(int[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1581constructorimpl(int i) {
        return m1582constructorimpl(new int[i]);
    }

    /* renamed from: get-pVg5ArA  reason: not valid java name */
    public static final int m1583getpVg5ArA(int[] iArr, int i) {
        return UInt.m1580constructorimpl(iArr[i]);
    }

    /* renamed from: set-VXSXFK8  reason: not valid java name */
    public static final void m1585setVXSXFK8(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m1584getSizeimpl(int[] iArr) {
        return iArr.length;
    }
}
