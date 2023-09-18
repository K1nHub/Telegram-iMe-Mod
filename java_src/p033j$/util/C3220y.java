package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3220y implements InterfaceC2908s {

    /* renamed from: a */
    private final Object[] f1203a;

    /* renamed from: b */
    private int f1204b;

    /* renamed from: c */
    private final int f1205c;

    /* renamed from: d */
    private final int f1206d;

    public C3220y(Object[] objArr, int i, int i2, int i3) {
        this.f1203a = objArr;
        this.f1204b = i;
        this.f1205c = i2;
        this.f1206d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1204b;
        if (i < 0 || i >= this.f1205c) {
            return false;
        }
        Object[] objArr = this.f1203a;
        this.f1204b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return this.f1206d;
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        return this.f1205c - this.f1204b;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1203a;
        int length = objArr.length;
        int i2 = this.f1205c;
        if (length < i2 || (i = this.f1204b) < 0) {
            return;
        }
        this.f1204b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        if (AbstractC2835a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public InterfaceC2908s trySplit() {
        int i = this.f1204b;
        int i2 = (this.f1205c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1203a;
        this.f1204b = i2;
        return new C3220y(objArr, i, i2, this.f1206d);
    }
}
