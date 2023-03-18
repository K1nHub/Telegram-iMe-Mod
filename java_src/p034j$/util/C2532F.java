package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2532F implements InterfaceC2611s.InterfaceC2613b {

    /* renamed from: a */
    private final int[] f545a;

    /* renamed from: b */
    private int f546b;

    /* renamed from: c */
    private final int f547c;

    /* renamed from: d */
    private final int f548d;

    public C2532F(int[] iArr, int i, int i2, int i3) {
        this.f545a = iArr;
        this.f546b = i;
        this.f547c = i2;
        this.f548d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2584l interfaceC2584l) {
        int i;
        Objects.requireNonNull(interfaceC2584l);
        int[] iArr = this.f545a;
        int length = iArr.length;
        int i2 = this.f547c;
        if (length < i2 || (i = this.f546b) < 0) {
            return;
        }
        this.f546b = i2;
        if (i < i2) {
            do {
                interfaceC2584l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return this.f548d;
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        return this.f547c - this.f546b;
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        int i = this.f546b;
        if (i < 0 || i >= this.f547c) {
            return false;
        }
        int[] iArr = this.f545a;
        this.f546b = i + 1;
        interfaceC2584l.accept(iArr[i]);
        return true;
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

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2613b trySplit() {
        int i = this.f546b;
        int i2 = (this.f547c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f545a;
        this.f546b = i2;
        return new C2532F(iArr, i, i2, this.f548d);
    }
}
