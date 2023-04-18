package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3000y implements InterfaceC2688s {

    /* renamed from: a */
    private final Object[] f1114a;

    /* renamed from: b */
    private int f1115b;

    /* renamed from: c */
    private final int f1116c;

    /* renamed from: d */
    private final int f1117d;

    public C3000y(Object[] objArr, int i, int i2, int i3) {
        this.f1114a = objArr;
        this.f1115b = i;
        this.f1116c = i2;
        this.f1117d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1115b;
        if (i < 0 || i >= this.f1116c) {
            return false;
        }
        Object[] objArr = this.f1114a;
        this.f1115b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2688s
    public int characteristics() {
        return this.f1117d;
    }

    @Override // p034j$.util.InterfaceC2688s
    public long estimateSize() {
        return this.f1116c - this.f1115b;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1114a;
        int length = objArr.length;
        int i2 = this.f1116c;
        if (length < i2 || (i = this.f1115b) < 0) {
            return;
        }
        this.f1115b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        if (AbstractC2615a.m601f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s
    public InterfaceC2688s trySplit() {
        int i = this.f1115b;
        int i2 = (this.f1116c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1114a;
        this.f1115b = i2;
        return new C3000y(objArr, i, i2, this.f1117d);
    }
}