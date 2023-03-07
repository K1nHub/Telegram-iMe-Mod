package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2408F implements InterfaceC2487s.InterfaceC2489b {

    /* renamed from: a */
    private final int[] f540a;

    /* renamed from: b */
    private int f541b;

    /* renamed from: c */
    private final int f542c;

    /* renamed from: d */
    private final int f543d;

    public C2408F(int[] iArr, int i, int i2, int i3) {
        this.f540a = iArr;
        this.f541b = i;
        this.f542c = i2;
        this.f543d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2460l interfaceC2460l) {
        int i;
        Objects.requireNonNull(interfaceC2460l);
        int[] iArr = this.f540a;
        int length = iArr.length;
        int i2 = this.f542c;
        if (length < i2 || (i = this.f541b) < 0) {
            return;
        }
        this.f541b = i2;
        if (i < i2) {
            do {
                interfaceC2460l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return this.f543d;
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        return this.f542c - this.f541b;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        int i = this.f541b;
        if (i < 0 || i >= this.f542c) {
            return false;
        }
        int[] iArr = this.f540a;
        this.f541b = i + 1;
        interfaceC2460l.accept(iArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        if (AbstractC2414a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2489b trySplit() {
        int i = this.f541b;
        int i2 = (this.f542c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f540a;
        this.f541b = i2;
        return new C2408F(iArr, i, i2, this.f543d);
    }
}
