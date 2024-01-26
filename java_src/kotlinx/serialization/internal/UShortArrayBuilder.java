package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UShortArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class UShortArrayBuilder extends PrimitiveArrayBuilder<UShortArray> {
    private short[] buffer;
    private int position;

    public /* synthetic */ UShortArrayBuilder(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ UShortArray build$kotlinx_serialization_core() {
        return UShortArray.m2024boximpl(m2158buildamswpOA$kotlinx_serialization_core());
    }

    private UShortArrayBuilder(short[] sArr) {
        this.buffer = sArr;
        this.position = UShortArray.m2031getSizeimpl(sArr);
        ensureCapacity$kotlinx_serialization_core(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i) {
        int coerceAtLeast;
        if (UShortArray.m2031getSizeimpl(this.buffer) < i) {
            short[] sArr = this.buffer;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i, UShortArray.m2031getSizeimpl(sArr) * 2);
            short[] copyOf = Arrays.copyOf(sArr, coerceAtLeast);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.buffer = UShortArray.m2026constructorimpl(copyOf);
        }
    }

    /* renamed from: append-xj2QHRw$kotlinx_serialization_core  reason: not valid java name */
    public final void m2157appendxj2QHRw$kotlinx_serialization_core(short s) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        short[] sArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        UShortArray.m2035set01HTLdE(sArr, position$kotlinx_serialization_core, s);
    }

    /* renamed from: build-amswpOA$kotlinx_serialization_core  reason: not valid java name */
    public short[] m2158buildamswpOA$kotlinx_serialization_core() {
        short[] copyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        return UShortArray.m2026constructorimpl(copyOf);
    }
}
