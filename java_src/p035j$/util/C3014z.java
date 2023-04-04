package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3014z implements InterfaceC2701s.InterfaceC2702a {

    /* renamed from: a */
    private final double[] f1123a;

    /* renamed from: b */
    private int f1124b;

    /* renamed from: c */
    private final int f1125c;

    /* renamed from: d */
    private final int f1126d;

    public C3014z(double[] dArr, int i, int i2, int i3) {
        this.f1123a = dArr;
        this.f1124b = i;
        this.f1125c = i2;
        this.f1126d = i3 | 64 | 16384;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return this.f1126d;
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2668f interfaceC2668f) {
        int i;
        Objects.requireNonNull(interfaceC2668f);
        double[] dArr = this.f1123a;
        int length = dArr.length;
        int i2 = this.f1125c;
        if (length < i2 || (i = this.f1124b) < 0) {
            return;
        }
        this.f1124b = i2;
        if (i < i2) {
            do {
                interfaceC2668f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        return this.f1125c - this.f1124b;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
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
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        int i = this.f1124b;
        if (i < 0 || i >= this.f1125c) {
            return false;
        }
        double[] dArr = this.f1123a;
        this.f1124b = i + 1;
        interfaceC2668f.accept(dArr[i]);
        return true;
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2702a trySplit() {
        int i = this.f1124b;
        int i2 = (this.f1125c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1123a;
        this.f1124b = i2;
        return new C3014z(dArr, i, i2, this.f1126d);
    }
}
