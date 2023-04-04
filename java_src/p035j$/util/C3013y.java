package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3013y implements InterfaceC2701s {

    /* renamed from: a */
    private final Object[] f1119a;

    /* renamed from: b */
    private int f1120b;

    /* renamed from: c */
    private final int f1121c;

    /* renamed from: d */
    private final int f1122d;

    public C3013y(Object[] objArr, int i, int i2, int i3) {
        this.f1119a = objArr;
        this.f1120b = i;
        this.f1121c = i2;
        this.f1122d = i3 | 64 | 16384;
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1120b;
        if (i < 0 || i >= this.f1121c) {
            return false;
        }
        Object[] objArr = this.f1119a;
        this.f1120b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return this.f1122d;
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        return this.f1121c - this.f1120b;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1119a;
        int length = objArr.length;
        int i2 = this.f1121c;
        if (length < i2 || (i = this.f1120b) < 0) {
            return;
        }
        this.f1120b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
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

    @Override // p035j$.util.InterfaceC2701s
    public InterfaceC2701s trySplit() {
        int i = this.f1120b;
        int i2 = (this.f1121c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1119a;
        this.f1120b = i2;
        return new C3013y(objArr, i, i2, this.f1122d);
    }
}
