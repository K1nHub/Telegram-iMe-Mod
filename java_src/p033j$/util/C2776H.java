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
    private final long[] f640a;

    /* renamed from: b */
    private int f641b;

    /* renamed from: c */
    private final int f642c;

    /* renamed from: d */
    private final int f643d;

    public C2776H(long[] jArr, int i, int i2, int i3) {
        this.f640a = jArr;
        this.f641b = i;
        this.f642c = i2;
        this.f643d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m599l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f643d;
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
        int i;
        Objects.requireNonNull(interfaceC2831q);
        long[] jArr = this.f640a;
        int length = jArr.length;
        int i2 = this.f642c;
        if (length < i2 || (i = this.f641b) < 0) {
            return;
        }
        this.f641b = i2;
        if (i < i2) {
            do {
                interfaceC2831q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f642c - this.f641b;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m607d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        int i = this.f641b;
        if (i < 0 || i >= this.f642c) {
            return false;
        }
        long[] jArr = this.f640a;
        this.f641b = i + 1;
        interfaceC2831q.accept(jArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2856c trySplit() {
        int i = this.f641b;
        int i2 = (this.f642c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f640a;
        this.f641b = i2;
        return new C2776H(jArr, i, i2, this.f643d);
    }
}
