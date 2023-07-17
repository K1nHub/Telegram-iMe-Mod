package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2774F implements InterfaceC2853s.InterfaceC2855b {

    /* renamed from: a */
    private final int[] f631a;

    /* renamed from: b */
    private int f632b;

    /* renamed from: c */
    private final int f633c;

    /* renamed from: d */
    private final int f634d;

    public C2774F(int[] iArr, int i, int i2, int i3) {
        this.f631a = iArr;
        this.f632b = i;
        this.f633c = i2;
        this.f634d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m600k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
        int i;
        Objects.requireNonNull(interfaceC2826l);
        int[] iArr = this.f631a;
        int length = iArr.length;
        int i2 = this.f633c;
        if (length < i2 || (i = this.f632b) < 0) {
            return;
        }
        this.f632b = i2;
        if (i < i2) {
            do {
                interfaceC2826l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f634d;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        return this.f633c - this.f632b;
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m608c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        int i = this.f632b;
        if (i < 0 || i >= this.f633c) {
            return false;
        }
        int[] iArr = this.f631a;
        this.f632b = i + 1;
        interfaceC2826l.accept(iArr[i]);
        return true;
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

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2855b trySplit() {
        int i = this.f632b;
        int i2 = (this.f633c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f631a;
        this.f632b = i2;
        return new C2774F(iArr, i, i2, this.f634d);
    }
}
