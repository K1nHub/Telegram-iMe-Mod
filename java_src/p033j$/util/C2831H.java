package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
final class C2831H implements InterfaceC2908s.InterfaceC2911c {

    /* renamed from: a */
    private final long[] f644a;

    /* renamed from: b */
    private int f645b;

    /* renamed from: c */
    private final int f646c;

    /* renamed from: d */
    private final int f647d;

    public C2831H(long[] jArr, int i, int i2, int i3) {
        this.f644a = jArr;
        this.f645b = i;
        this.f646c = i2;
        this.f647d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return this.f647d;
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2886q interfaceC2886q) {
        int i;
        Objects.requireNonNull(interfaceC2886q);
        long[] jArr = this.f644a;
        int length = jArr.length;
        int i2 = this.f646c;
        if (length < i2 || (i = this.f645b) < 0) {
            return;
        }
        this.f645b = i2;
        if (i < i2) {
            do {
                interfaceC2886q.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        return this.f646c - this.f645b;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        if (AbstractC2835a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        int i = this.f645b;
        if (i < 0 || i >= this.f646c) {
            return false;
        }
        long[] jArr = this.f644a;
        this.f645b = i + 1;
        interfaceC2886q.accept(jArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public InterfaceC2908s.InterfaceC2911c trySplit() {
        int i = this.f645b;
        int i2 = (this.f646c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f644a;
        this.f645b = i2;
        return new C2831H(jArr, i, i2, this.f647d);
    }
}
