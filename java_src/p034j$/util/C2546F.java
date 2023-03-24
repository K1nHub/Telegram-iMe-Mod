package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2546F implements InterfaceC2625s.InterfaceC2627b {

    /* renamed from: a */
    private final int[] f546a;

    /* renamed from: b */
    private int f547b;

    /* renamed from: c */
    private final int f548c;

    /* renamed from: d */
    private final int f549d;

    public C2546F(int[] iArr, int i, int i2, int i3) {
        this.f546a = iArr;
        this.f547b = i;
        this.f548c = i2;
        this.f549d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2598l interfaceC2598l) {
        int i;
        Objects.requireNonNull(interfaceC2598l);
        int[] iArr = this.f546a;
        int length = iArr.length;
        int i2 = this.f548c;
        if (length < i2 || (i = this.f547b) < 0) {
            return;
        }
        this.f547b = i2;
        if (i < i2) {
            do {
                interfaceC2598l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public int characteristics() {
        return this.f549d;
    }

    @Override // p034j$.util.InterfaceC2625s
    public long estimateSize() {
        return this.f548c - this.f547b;
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        int i = this.f547b;
        if (i < 0 || i >= this.f548c) {
            return false;
        }
        int[] iArr = this.f546a;
        this.f547b = i + 1;
        interfaceC2598l.accept(iArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        if (AbstractC2552a.m620f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2627b trySplit() {
        int i = this.f547b;
        int i2 = (this.f548c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f546a;
        this.f547b = i2;
        return new C2546F(iArr, i, i2, this.f549d);
    }
}
