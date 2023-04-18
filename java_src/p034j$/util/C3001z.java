package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3001z implements InterfaceC2688s.InterfaceC2689a {

    /* renamed from: a */
    private final double[] f1118a;

    /* renamed from: b */
    private int f1119b;

    /* renamed from: c */
    private final int f1120c;

    /* renamed from: d */
    private final int f1121d;

    public C3001z(double[] dArr, int i, int i2, int i3) {
        this.f1118a = dArr;
        this.f1119b = i;
        this.f1120c = i2;
        this.f1121d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public int characteristics() {
        return this.f1121d;
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2655f interfaceC2655f) {
        int i;
        Objects.requireNonNull(interfaceC2655f);
        double[] dArr = this.f1118a;
        int length = dArr.length;
        int i2 = this.f1120c;
        if (length < i2 || (i = this.f1119b) < 0) {
            return;
        }
        this.f1119b = i2;
        if (i < i2) {
            do {
                interfaceC2655f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public long estimateSize() {
        return this.f1120c - this.f1119b;
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        if (AbstractC2615a.m601f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        int i = this.f1119b;
        if (i < 0 || i >= this.f1120c) {
            return false;
        }
        double[] dArr = this.f1118a;
        this.f1119b = i + 1;
        interfaceC2655f.accept(dArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public InterfaceC2688s.InterfaceC2689a trySplit() {
        int i = this.f1119b;
        int i2 = (this.f1120c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1118a;
        this.f1119b = i2;
        return new C3001z(dArr, i, i2, this.f1121d);
    }
}
