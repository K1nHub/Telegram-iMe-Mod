package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2548H implements InterfaceC2625s.InterfaceC2628c {

    /* renamed from: a */
    private final long[] f555a;

    /* renamed from: b */
    private int f556b;

    /* renamed from: c */
    private final int f557c;

    /* renamed from: d */
    private final int f558d;

    public C2548H(long[] jArr, int i, int i2, int i3) {
        this.f555a = jArr;
        this.f556b = i;
        this.f557c = i2;
        this.f558d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    public int characteristics() {
        return this.f558d;
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2603q interfaceC2603q) {
        int i;
        Objects.requireNonNull(interfaceC2603q);
        long[] jArr = this.f555a;
        int length = jArr.length;
        int i2 = this.f557c;
        if (length < i2 || (i = this.f556b) < 0) {
            return;
        }
        this.f556b = i2;
        if (i < i2) {
            do {
                interfaceC2603q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public long estimateSize() {
        return this.f557c - this.f556b;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
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
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        int i = this.f556b;
        if (i < 0 || i >= this.f557c) {
            return false;
        }
        long[] jArr = this.f555a;
        this.f556b = i + 1;
        interfaceC2603q.accept(jArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2628c trySplit() {
        int i = this.f556b;
        int i2 = (this.f557c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f555a;
        this.f556b = i2;
        return new C2548H(jArr, i, i2, this.f558d);
    }
}
