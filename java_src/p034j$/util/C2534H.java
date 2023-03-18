package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2534H implements InterfaceC2611s.InterfaceC2614c {

    /* renamed from: a */
    private final long[] f554a;

    /* renamed from: b */
    private int f555b;

    /* renamed from: c */
    private final int f556c;

    /* renamed from: d */
    private final int f557d;

    public C2534H(long[] jArr, int i, int i2, int i3) {
        this.f554a = jArr;
        this.f555b = i;
        this.f556c = i2;
        this.f557d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return this.f557d;
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2589q interfaceC2589q) {
        int i;
        Objects.requireNonNull(interfaceC2589q);
        long[] jArr = this.f554a;
        int length = jArr.length;
        int i2 = this.f556c;
        if (length < i2 || (i = this.f555b) < 0) {
            return;
        }
        this.f555b = i2;
        if (i < i2) {
            do {
                interfaceC2589q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        return this.f556c - this.f555b;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m623d(this, consumer);
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
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        int i = this.f555b;
        if (i < 0 || i >= this.f556c) {
            return false;
        }
        long[] jArr = this.f554a;
        this.f555b = i + 1;
        interfaceC2589q.accept(jArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2614c trySplit() {
        int i = this.f555b;
        int i2 = (this.f556c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f554a;
        this.f555b = i2;
        return new C2534H(jArr, i, i2, this.f557d);
    }
}
