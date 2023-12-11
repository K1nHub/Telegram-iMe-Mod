package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.E */
/* loaded from: classes2.dex */
final class C2769E implements Spliterator.InterfaceC2775c {

    /* renamed from: a */
    private final long[] f687a;

    /* renamed from: b */
    private int f688b;

    /* renamed from: c */
    private final int f689c;

    /* renamed from: d */
    private final int f690d;

    public C2769E(long[] jArr, int i, int i2, int i3) {
        this.f687a = jArr;
        this.f688b = i;
        this.f689c = i2;
        this.f690d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m598h(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return this.f690d;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2827p interfaceC2827p) {
        int i;
        Objects.requireNonNull(interfaceC2827p);
        long[] jArr = this.f687a;
        int length = jArr.length;
        int i2 = this.f689c;
        if (length < i2 || (i = this.f688b) < 0) {
            return;
        }
        this.f688b = i2;
        if (i < i2) {
            do {
                interfaceC2827p.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        return this.f689c - this.f688b;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m603c(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2840k.m601e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        int i = this.f688b;
        if (i < 0 || i >= this.f689c) {
            return false;
        }
        long[] jArr = this.f687a;
        this.f688b = i + 1;
        interfaceC2827p.accept(jArr[i]);
        return true;
    }

    @Override // p033j$.util.Spliterator
    public Spliterator.InterfaceC2775c trySplit() {
        int i = this.f688b;
        int i2 = (this.f689c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        long[] jArr = this.f687a;
        this.f688b = i2;
        return new C2769E(jArr, i, i2, this.f690d);
    }
}
