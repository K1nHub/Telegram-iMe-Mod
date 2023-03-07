package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C2799y implements InterfaceC2487s {

    /* renamed from: a */
    private final Object[] f1108a;

    /* renamed from: b */
    private int f1109b;

    /* renamed from: c */
    private final int f1110c;

    /* renamed from: d */
    private final int f1111d;

    public C2799y(Object[] objArr, int i, int i2, int i3) {
        this.f1108a = objArr;
        this.f1109b = i;
        this.f1110c = i2;
        this.f1111d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1109b;
        if (i < 0 || i >= this.f1110c) {
            return false;
        }
        Object[] objArr = this.f1108a;
        this.f1109b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return this.f1111d;
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        return this.f1110c - this.f1109b;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1108a;
        int length = objArr.length;
        int i2 = this.f1110c;
        if (length < i2 || (i = this.f1109b) < 0) {
            return;
        }
        this.f1109b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
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

    @Override // p034j$.util.InterfaceC2487s
    public InterfaceC2487s trySplit() {
        int i = this.f1109b;
        int i2 = (this.f1110c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1108a;
        this.f1109b = i2;
        return new C2799y(objArr, i, i2, this.f1111d);
    }
}
