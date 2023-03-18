package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C2923y implements InterfaceC2611s {

    /* renamed from: a */
    private final Object[] f1113a;

    /* renamed from: b */
    private int f1114b;

    /* renamed from: c */
    private final int f1115c;

    /* renamed from: d */
    private final int f1116d;

    public C2923y(Object[] objArr, int i, int i2, int i3) {
        this.f1113a = objArr;
        this.f1114b = i;
        this.f1115c = i2;
        this.f1116d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1114b;
        if (i < 0 || i >= this.f1115c) {
            return false;
        }
        Object[] objArr = this.f1113a;
        this.f1114b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return this.f1116d;
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        return this.f1115c - this.f1114b;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1113a;
        int length = objArr.length;
        int i2 = this.f1115c;
        if (length < i2 || (i = this.f1114b) < 0) {
            return;
        }
        this.f1114b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        if (AbstractC2538a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public InterfaceC2611s trySplit() {
        int i = this.f1114b;
        int i2 = (this.f1115c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1113a;
        this.f1114b = i2;
        return new C2923y(objArr, i, i2, this.f1116d);
    }
}
