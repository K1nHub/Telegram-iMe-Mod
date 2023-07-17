package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3166z implements InterfaceC2853s.InterfaceC2854a {

    /* renamed from: a */
    private final double[] f1203a;

    /* renamed from: b */
    private int f1204b;

    /* renamed from: c */
    private final int f1205c;

    /* renamed from: d */
    private final int f1206d;

    public C3166z(double[] dArr, int i, int i2, int i3) {
        this.f1203a = dArr;
        this.f1204b = i;
        this.f1205c = i2;
        this.f1206d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m601j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f1206d;
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
        int i;
        Objects.requireNonNull(interfaceC2820f);
        double[] dArr = this.f1203a;
        int length = dArr.length;
        int i2 = this.f1205c;
        if (length < i2 || (i = this.f1204b) < 0) {
            return;
        }
        this.f1204b = i2;
        if (i < i2) {
            do {
                interfaceC2820f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f1205c - this.f1204b;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m609b(this, consumer);
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

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        int i = this.f1204b;
        if (i < 0 || i >= this.f1205c) {
            return false;
        }
        double[] dArr = this.f1203a;
        this.f1204b = i + 1;
        interfaceC2820f.accept(dArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2854a trySplit() {
        int i = this.f1204b;
        int i2 = (this.f1205c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1203a;
        this.f1204b = i2;
        return new C3166z(dArr, i, i2, this.f1206d);
    }
}
