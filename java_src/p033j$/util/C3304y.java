package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3304y implements InterfaceC2992s {

    /* renamed from: a */
    private final Object[] f1212a;

    /* renamed from: b */
    private int f1213b;

    /* renamed from: c */
    private final int f1214c;

    /* renamed from: d */
    private final int f1215d;

    public C3304y(Object[] objArr, int i, int i2, int i3) {
        this.f1212a = objArr;
        this.f1213b = i;
        this.f1214c = i2;
        this.f1215d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i = this.f1213b;
        if (i < 0 || i >= this.f1214c) {
            return false;
        }
        Object[] objArr = this.f1212a;
        this.f1213b = i + 1;
        consumer.accept(objArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return this.f1215d;
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        return this.f1214c - this.f1213b;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        int i;
        Objects.requireNonNull(consumer);
        Object[] objArr = this.f1212a;
        int length = objArr.length;
        int i2 = this.f1214c;
        if (length < i2 || (i = this.f1213b) < 0) {
            return;
        }
        this.f1213b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        if (AbstractC2919a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public InterfaceC2992s trySplit() {
        int i = this.f1213b;
        int i2 = (this.f1214c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        Object[] objArr = this.f1212a;
        this.f1213b = i2;
        return new C3304y(objArr, i, i2, this.f1215d);
    }
}
