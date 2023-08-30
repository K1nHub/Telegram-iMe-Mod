package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2915H implements InterfaceC2992s.InterfaceC2995c {

    /* renamed from: a */
    private final long[] f653a;

    /* renamed from: b */
    private int f654b;

    /* renamed from: c */
    private final int f655c;

    /* renamed from: d */
    private final int f656d;

    public C2915H(long[] jArr, int i, int i2, int i3) {
        this.f653a = jArr;
        this.f654b = i;
        this.f655c = i2;
        this.f656d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return this.f656d;
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2970q interfaceC2970q) {
        int i;
        Objects.requireNonNull(interfaceC2970q);
        long[] jArr = this.f653a;
        int length = jArr.length;
        int i2 = this.f655c;
        if (length < i2 || (i = this.f654b) < 0) {
            return;
        }
        this.f654b = i2;
        if (i < i2) {
            do {
                interfaceC2970q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        return this.f655c - this.f654b;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        if (AbstractC2919a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        int i = this.f654b;
        if (i < 0 || i >= this.f655c) {
            return false;
        }
        long[] jArr = this.f653a;
        this.f654b = i + 1;
        interfaceC2970q.accept(jArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2995c trySplit() {
        int i = this.f654b;
        int i2 = (this.f655c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f653a;
        this.f654b = i2;
        return new C2915H(jArr, i, i2, this.f656d);
    }
}
