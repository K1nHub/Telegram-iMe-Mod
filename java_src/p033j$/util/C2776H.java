package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2776H implements InterfaceC2853s.InterfaceC2856c {

    /* renamed from: a */
    private final long[] f643a;

    /* renamed from: b */
    private int f644b;

    /* renamed from: c */
    private final int f645c;

    /* renamed from: d */
    private final int f646d;

    public C2776H(long[] jArr, int i, int i2, int i3) {
        this.f643a = jArr;
        this.f644b = i;
        this.f645c = i2;
        this.f646d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f646d;
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
        int i;
        Objects.requireNonNull(interfaceC2831q);
        long[] jArr = this.f643a;
        int length = jArr.length;
        int i2 = this.f645c;
        if (length < i2 || (i = this.f644b) < 0) {
            return;
        }
        this.f644b = i2;
        if (i < i2) {
            do {
                interfaceC2831q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f645c - this.f644b;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        int i = this.f644b;
        if (i < 0 || i >= this.f645c) {
            return false;
        }
        long[] jArr = this.f643a;
        this.f644b = i + 1;
        interfaceC2831q.accept(jArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2856c trySplit() {
        int i = this.f644b;
        int i2 = (this.f645c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f643a;
        this.f644b = i2;
        return new C2776H(jArr, i, i2, this.f646d);
    }
}
