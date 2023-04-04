package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3165y implements InterfaceC2853s {

    /* renamed from: a */
    private final Object[] f1199a;

    /* renamed from: b */
    private int f1200b;

    /* renamed from: c */
    private final int f1201c;

    /* renamed from: d */
    private final int f1202d;

    public C3165y(Object[] objArr, int i, int i2, int i3) {
        this.f1199a = objArr;
        this.f1200b = i;
        this.f1201c = i2;
        this.f1202d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1200b;
        if (i < 0 || i >= this.f1201c) {
            return false;
        }
        Object[] objArr = this.f1199a;
        this.f1200b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f1202d;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f1201c - this.f1200b;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1199a;
        int length = objArr.length;
        int i2 = this.f1201c;
        if (length < i2 || (i = this.f1200b) < 0) {
            return;
        }
        this.f1200b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        int i = this.f1200b;
        int i2 = (this.f1201c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1199a;
        this.f1200b = i2;
        return new C3165y(objArr, i, i2, this.f1202d);
    }
}