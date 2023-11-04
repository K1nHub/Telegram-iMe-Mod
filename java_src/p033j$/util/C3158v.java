package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.v */
/* loaded from: classes2.dex */
final class C3158v implements Spliterator {

    /* renamed from: a */
    private final Object[] f1246a;

    /* renamed from: b */
    private int f1247b;

    /* renamed from: c */
    private final int f1248c;

    /* renamed from: d */
    private final int f1249d;

    public C3158v(Object[] objArr, int i, int i2, int i3) {
        this.f1246a = objArr;
        this.f1247b = i;
        this.f1248c = i2;
        this.f1249d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo179b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1247b;
        if (i < 0 || i >= this.f1248c) {
            return false;
        }
        Object[] objArr = this.f1246a;
        this.f1247b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return this.f1249d;
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        return this.f1248c - this.f1247b;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1246a;
        int length = objArr.length;
        int i2 = this.f1248c;
        if (length < i2 || (i = this.f1247b) < 0) {
            return;
        }
        this.f1247b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2843k.m601e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2843k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2843k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        int i = this.f1247b;
        int i2 = (this.f1248c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1246a;
        this.f1247b = i2;
        return new C3158v(objArr, i, i2, this.f1249d);
    }
}
