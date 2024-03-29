package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.w */
/* loaded from: classes2.dex */
final class C3154w implements Spliterator.InterfaceC2771a {

    /* renamed from: a */
    private final double[] f1250a;

    /* renamed from: b */
    private int f1251b;

    /* renamed from: c */
    private final int f1252c;

    /* renamed from: d */
    private final int f1253d;

    public C3154w(double[] dArr, int i, int i2, int i3) {
        this.f1250a = dArr;
        this.f1251b = i;
        this.f1252c = i2;
        this.f1253d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return this.f1253d;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2815f interfaceC2815f) {
        int i;
        Objects.requireNonNull(interfaceC2815f);
        double[] dArr = this.f1250a;
        int length = dArr.length;
        int i2 = this.f1252c;
        if (length < i2 || (i = this.f1251b) < 0) {
            return;
        }
        this.f1251b = i2;
        if (i < i2) {
            do {
                interfaceC2815f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        return this.f1252c - this.f1251b;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2838k.m604e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: n */
    public boolean tryAdvance(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        int i = this.f1251b;
        if (i < 0 || i >= this.f1252c) {
            return false;
        }
        double[] dArr = this.f1250a;
        this.f1251b = i + 1;
        interfaceC2815f.accept(dArr[i]);
        return true;
    }

    @Override // p033j$.util.Spliterator
    public Spliterator.InterfaceC2771a trySplit() {
        int i = this.f1251b;
        int i2 = (this.f1252c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1250a;
        this.f1251b = i2;
        return new C3154w(dArr, i, i2, this.f1253d);
    }
}
