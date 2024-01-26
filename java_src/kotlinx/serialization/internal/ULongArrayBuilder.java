package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.ULongArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class ULongArrayBuilder extends PrimitiveArrayBuilder<ULongArray> {
    private long[] buffer;
    private int position;

    public /* synthetic */ ULongArrayBuilder(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ ULongArray build$kotlinx_serialization_core() {
        return ULongArray.m2002boximpl(m2150buildY2RjT0g$kotlinx_serialization_core());
    }

    private ULongArrayBuilder(long[] jArr) {
        this.buffer = jArr;
        this.position = ULongArray.m2009getSizeimpl(jArr);
        ensureCapacity$kotlinx_serialization_core(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i) {
        int coerceAtLeast;
        if (ULongArray.m2009getSizeimpl(this.buffer) < i) {
            long[] jArr = this.buffer;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i, ULongArray.m2009getSizeimpl(jArr) * 2);
            long[] copyOf = Arrays.copyOf(jArr, coerceAtLeast);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.buffer = ULongArray.m2004constructorimpl(copyOf);
        }
    }

    /* renamed from: append-VKZWuLQ$kotlinx_serialization_core  reason: not valid java name */
    public final void m2149appendVKZWuLQ$kotlinx_serialization_core(long j) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        long[] jArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        ULongArray.m2013setk8EXiF4(jArr, position$kotlinx_serialization_core, j);
    }

    /* renamed from: build-Y2RjT0g$kotlinx_serialization_core  reason: not valid java name */
    public long[] m2150buildY2RjT0g$kotlinx_serialization_core() {
        long[] copyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        return ULongArray.m2004constructorimpl(copyOf);
    }
}
