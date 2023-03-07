package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2410H implements InterfaceC2487s.InterfaceC2490c {

    /* renamed from: a */
    private final long[] f549a;

    /* renamed from: b */
    private int f550b;

    /* renamed from: c */
    private final int f551c;

    /* renamed from: d */
    private final int f552d;

    public C2410H(long[] jArr, int i, int i2, int i3) {
        this.f549a = jArr;
        this.f550b = i;
        this.f551c = i2;
        this.f552d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return this.f552d;
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2465q interfaceC2465q) {
        int i;
        Objects.requireNonNull(interfaceC2465q);
        long[] jArr = this.f549a;
        int length = jArr.length;
        int i2 = this.f551c;
        if (length < i2 || (i = this.f550b) < 0) {
            return;
        }
        this.f550b = i2;
        if (i < i2) {
            do {
                interfaceC2465q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        return this.f551c - this.f550b;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        if (AbstractC2414a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        int i = this.f550b;
        if (i < 0 || i >= this.f551c) {
            return false;
        }
        long[] jArr = this.f549a;
        this.f550b = i + 1;
        interfaceC2465q.accept(jArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2490c trySplit() {
        int i = this.f550b;
        int i2 = (this.f551c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f549a;
        this.f550b = i2;
        return new C2410H(jArr, i, i2, this.f552d);
    }
}
