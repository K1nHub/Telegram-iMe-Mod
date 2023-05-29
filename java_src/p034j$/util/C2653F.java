package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2653F implements InterfaceC2732s.InterfaceC2734b {

    /* renamed from: a */
    private final int[] f549a;

    /* renamed from: b */
    private int f550b;

    /* renamed from: c */
    private final int f551c;

    /* renamed from: d */
    private final int f552d;

    public C2653F(int[] iArr, int i, int i2, int i3) {
        this.f549a = iArr;
        this.f550b = i;
        this.f551c = i2;
        this.f552d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2705l interfaceC2705l) {
        int i;
        Objects.requireNonNull(interfaceC2705l);
        int[] iArr = this.f549a;
        int length = iArr.length;
        int i2 = this.f551c;
        if (length < i2 || (i = this.f550b) < 0) {
            return;
        }
        this.f550b = i2;
        if (i < i2) {
            do {
                interfaceC2705l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public int characteristics() {
        return this.f552d;
    }

    @Override // p034j$.util.InterfaceC2732s
    public long estimateSize() {
        return this.f551c - this.f550b;
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        int i = this.f550b;
        if (i < 0 || i >= this.f551c) {
            return false;
        }
        int[] iArr = this.f549a;
        this.f550b = i + 1;
        interfaceC2705l.accept(iArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        if (AbstractC2659a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2734b trySplit() {
        int i = this.f550b;
        int i2 = (this.f551c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f549a;
        this.f550b = i2;
        return new C2653F(iArr, i, i2, this.f552d);
    }
}
