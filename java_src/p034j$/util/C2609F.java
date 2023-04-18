package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2609F implements InterfaceC2688s.InterfaceC2690b {

    /* renamed from: a */
    private final int[] f546a;

    /* renamed from: b */
    private int f547b;

    /* renamed from: c */
    private final int f548c;

    /* renamed from: d */
    private final int f549d;

    public C2609F(int[] iArr, int i, int i2, int i3) {
        this.f546a = iArr;
        this.f547b = i;
        this.f548c = i2;
        this.f549d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2661l interfaceC2661l) {
        int i;
        Objects.requireNonNull(interfaceC2661l);
        int[] iArr = this.f546a;
        int length = iArr.length;
        int i2 = this.f548c;
        if (length < i2 || (i = this.f547b) < 0) {
            return;
        }
        this.f547b = i2;
        if (i < i2) {
            do {
                interfaceC2661l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public int characteristics() {
        return this.f549d;
    }

    @Override // p034j$.util.InterfaceC2688s
    public long estimateSize() {
        return this.f548c - this.f547b;
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        int i = this.f547b;
        if (i < 0 || i >= this.f548c) {
            return false;
        }
        int[] iArr = this.f546a;
        this.f547b = i + 1;
        interfaceC2661l.accept(iArr[i]);
        return true;
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

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public InterfaceC2688s.InterfaceC2690b trySplit() {
        int i = this.f547b;
        int i2 = (this.f548c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f546a;
        this.f547b = i2;
        return new C2609F(iArr, i, i2, this.f549d);
    }
}
