package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C2938z implements InterfaceC2625s.InterfaceC2626a {

    /* renamed from: a */
    private final double[] f1118a;

    /* renamed from: b */
    private int f1119b;

    /* renamed from: c */
    private final int f1120c;

    /* renamed from: d */
    private final int f1121d;

    public C2938z(double[] dArr, int i, int i2, int i3) {
        this.f1118a = dArr;
        this.f1119b = i;
        this.f1120c = i2;
        this.f1121d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public int characteristics() {
        return this.f1121d;
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2592f interfaceC2592f) {
        int i;
        Objects.requireNonNull(interfaceC2592f);
        double[] dArr = this.f1118a;
        int length = dArr.length;
        int i2 = this.f1120c;
        if (length < i2 || (i = this.f1119b) < 0) {
            return;
        }
        this.f1119b = i2;
        if (i < i2) {
            do {
                interfaceC2592f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public long estimateSize() {
        return this.f1120c - this.f1119b;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        if (AbstractC2552a.m620f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        int i = this.f1119b;
        if (i < 0 || i >= this.f1120c) {
            return false;
        }
        double[] dArr = this.f1118a;
        this.f1119b = i + 1;
        interfaceC2592f.accept(dArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2626a trySplit() {
        int i = this.f1119b;
        int i2 = (this.f1120c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1118a;
        this.f1119b = i2;
        return new C2938z(dArr, i, i2, this.f1121d);
    }
}
