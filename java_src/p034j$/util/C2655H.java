package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2655H implements InterfaceC2732s.InterfaceC2735c {

    /* renamed from: a */
    private final long[] f558a;

    /* renamed from: b */
    private int f559b;

    /* renamed from: c */
    private final int f560c;

    /* renamed from: d */
    private final int f561d;

    public C2655H(long[] jArr, int i, int i2, int i3) {
        this.f558a = jArr;
        this.f559b = i;
        this.f560c = i2;
        this.f561d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return this.f561d;
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2710q interfaceC2710q) {
        int i;
        Objects.requireNonNull(interfaceC2710q);
        long[] jArr = this.f558a;
        int length = jArr.length;
        int i2 = this.f560c;
        if (length < i2 || (i = this.f559b) < 0) {
            return;
        }
        this.f559b = i2;
        if (i < i2) {
            do {
                interfaceC2710q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        return this.f560c - this.f559b;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
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
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        int i = this.f559b;
        if (i < 0 || i >= this.f560c) {
            return false;
        }
        long[] jArr = this.f558a;
        this.f559b = i + 1;
        interfaceC2710q.accept(jArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2735c trySplit() {
        int i = this.f559b;
        int i2 = (this.f560c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f558a;
        this.f559b = i2;
        return new C2655H(jArr, i, i2, this.f561d);
    }
}
