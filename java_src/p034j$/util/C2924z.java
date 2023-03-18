package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C2924z implements InterfaceC2611s.InterfaceC2612a {

    /* renamed from: a */
    private final double[] f1117a;

    /* renamed from: b */
    private int f1118b;

    /* renamed from: c */
    private final int f1119c;

    /* renamed from: d */
    private final int f1120d;

    public C2924z(double[] dArr, int i, int i2, int i3) {
        this.f1117a = dArr;
        this.f1118b = i;
        this.f1119c = i2;
        this.f1120d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return this.f1120d;
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2578f interfaceC2578f) {
        int i;
        Objects.requireNonNull(interfaceC2578f);
        double[] dArr = this.f1117a;
        int length = dArr.length;
        int i2 = this.f1119c;
        if (length < i2 || (i = this.f1118b) < 0) {
            return;
        }
        this.f1118b = i2;
        if (i < i2) {
            do {
                interfaceC2578f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        return this.f1119c - this.f1118b;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m625b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        if (AbstractC2538a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        int i = this.f1118b;
        if (i < 0 || i >= this.f1119c) {
            return false;
        }
        double[] dArr = this.f1117a;
        this.f1118b = i + 1;
        interfaceC2578f.accept(dArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2612a trySplit() {
        int i = this.f1118b;
        int i2 = (this.f1119c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1117a;
        this.f1118b = i2;
        return new C2924z(dArr, i, i2, this.f1120d);
    }
}
