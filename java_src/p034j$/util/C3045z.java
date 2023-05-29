package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3045z implements InterfaceC2732s.InterfaceC2733a {

    /* renamed from: a */
    private final double[] f1121a;

    /* renamed from: b */
    private int f1122b;

    /* renamed from: c */
    private final int f1123c;

    /* renamed from: d */
    private final int f1124d;

    public C3045z(double[] dArr, int i, int i2, int i3) {
        this.f1121a = dArr;
        this.f1122b = i;
        this.f1123c = i2;
        this.f1124d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return this.f1124d;
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2699f interfaceC2699f) {
        int i;
        Objects.requireNonNull(interfaceC2699f);
        double[] dArr = this.f1121a;
        int length = dArr.length;
        int i2 = this.f1123c;
        if (length < i2 || (i = this.f1122b) < 0) {
            return;
        }
        this.f1122b = i2;
        if (i < i2) {
            do {
                interfaceC2699f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        return this.f1123c - this.f1122b;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m609b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        if (AbstractC2659a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        int i = this.f1122b;
        if (i < 0 || i >= this.f1123c) {
            return false;
        }
        double[] dArr = this.f1121a;
        this.f1122b = i + 1;
        interfaceC2699f.accept(dArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2733a trySplit() {
        int i = this.f1122b;
        int i2 = (this.f1123c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1121a;
        this.f1122b = i2;
        return new C3045z(dArr, i, i2, this.f1124d);
    }
}
