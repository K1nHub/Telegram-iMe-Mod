package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2624H implements InterfaceC2701s.InterfaceC2704c {

    /* renamed from: a */
    private final long[] f560a;

    /* renamed from: b */
    private int f561b;

    /* renamed from: c */
    private final int f562c;

    /* renamed from: d */
    private final int f563d;

    public C2624H(long[] jArr, int i, int i2, int i3) {
        this.f560a = jArr;
        this.f561b = i;
        this.f562c = i2;
        this.f563d = i3 | 64 | 16384;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return this.f563d;
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2679q interfaceC2679q) {
        int i;
        Objects.requireNonNull(interfaceC2679q);
        long[] jArr = this.f560a;
        int length = jArr.length;
        int i2 = this.f562c;
        if (length < i2 || (i = this.f561b) < 0) {
            return;
        }
        this.f561b = i2;
        if (i < i2) {
            do {
                interfaceC2679q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        return this.f562c - this.f561b;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        if (AbstractC2628a.m615f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        int i = this.f561b;
        if (i < 0 || i >= this.f562c) {
            return false;
        }
        long[] jArr = this.f560a;
        this.f561b = i + 1;
        interfaceC2679q.accept(jArr[i]);
        return true;
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2704c trySplit() {
        int i = this.f561b;
        int i2 = (this.f562c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f560a;
        this.f561b = i2;
        return new C2624H(jArr, i, i2, this.f563d);
    }
}
