package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UIntArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class UIntArrayBuilder extends PrimitiveArrayBuilder<UIntArray> {
    private int[] buffer;
    private int position;

    public /* synthetic */ UIntArrayBuilder(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ UIntArray build$kotlinx_serialization_core() {
        return UIntArray.m1977boximpl(m2139buildhP7Qyg$kotlinx_serialization_core());
    }

    private UIntArrayBuilder(int[] iArr) {
        this.buffer = iArr;
        this.position = UIntArray.m1984getSizeimpl(iArr);
        ensureCapacity$kotlinx_serialization_core(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i) {
        int coerceAtLeast;
        if (UIntArray.m1984getSizeimpl(this.buffer) < i) {
            int[] iArr = this.buffer;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i, UIntArray.m1984getSizeimpl(iArr) * 2);
            int[] copyOf = Arrays.copyOf(iArr, coerceAtLeast);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.buffer = UIntArray.m1979constructorimpl(copyOf);
        }
    }

    /* renamed from: append-WZ4Q5Ns$kotlinx_serialization_core  reason: not valid java name */
    public final void m2138appendWZ4Q5Ns$kotlinx_serialization_core(int i) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        int[] iArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        UIntArray.m1988setVXSXFK8(iArr, position$kotlinx_serialization_core, i);
    }

    /* renamed from: build--hP7Qyg$kotlinx_serialization_core  reason: not valid java name */
    public int[] m2139buildhP7Qyg$kotlinx_serialization_core() {
        int[] copyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        return UIntArray.m1979constructorimpl(copyOf);
    }
}
