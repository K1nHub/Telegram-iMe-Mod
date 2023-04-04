package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2622F implements InterfaceC2701s.InterfaceC2703b {

    /* renamed from: a */
    private final int[] f551a;

    /* renamed from: b */
    private int f552b;

    /* renamed from: c */
    private final int f553c;

    /* renamed from: d */
    private final int f554d;

    public C2622F(int[] iArr, int i, int i2, int i3) {
        this.f551a = iArr;
        this.f552b = i;
        this.f553c = i2;
        this.f554d = i3 | 64 | 16384;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2674l interfaceC2674l) {
        int i;
        Objects.requireNonNull(interfaceC2674l);
        int[] iArr = this.f551a;
        int length = iArr.length;
        int i2 = this.f553c;
        if (length < i2 || (i = this.f552b) < 0) {
            return;
        }
        this.f552b = i2;
        if (i < i2) {
            do {
                interfaceC2674l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return this.f554d;
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        return this.f553c - this.f552b;
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        int i = this.f552b;
        if (i < 0 || i >= this.f553c) {
            return false;
        }
        int[] iArr = this.f551a;
        this.f552b = i + 1;
        interfaceC2674l.accept(iArr[i]);
        return true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        if (AbstractC2628a.m615f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2703b trySplit() {
        int i = this.f552b;
        int i2 = (this.f553c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f551a;
        this.f552b = i2;
        return new C2622F(iArr, i, i2, this.f554d);
    }
}
