package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3044y implements InterfaceC2732s {

    /* renamed from: a */
    private final Object[] f1117a;

    /* renamed from: b */
    private int f1118b;

    /* renamed from: c */
    private final int f1119c;

    /* renamed from: d */
    private final int f1120d;

    public C3044y(Object[] objArr, int i, int i2, int i3) {
        this.f1117a = objArr;
        this.f1118b = i;
        this.f1119c = i2;
        this.f1120d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1118b;
        if (i < 0 || i >= this.f1119c) {
            return false;
        }
        Object[] objArr = this.f1117a;
        this.f1118b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return this.f1120d;
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        return this.f1119c - this.f1118b;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1117a;
        int length = objArr.length;
        int i2 = this.f1119c;
        if (length < i2 || (i = this.f1118b) < 0) {
            return;
        }
        this.f1118b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        if (AbstractC2659a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2732s
    public InterfaceC2732s trySplit() {
        int i = this.f1118b;
        int i2 = (this.f1119c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1117a;
        this.f1118b = i2;
        return new C3044y(objArr, i, i2, this.f1120d);
    }
}
