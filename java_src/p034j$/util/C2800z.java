package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C2800z implements InterfaceC2487s.InterfaceC2488a {

    /* renamed from: a */
    private final double[] f1112a;

    /* renamed from: b */
    private int f1113b;

    /* renamed from: c */
    private final int f1114c;

    /* renamed from: d */
    private final int f1115d;

    public C2800z(double[] dArr, int i, int i2, int i3) {
        this.f1112a = dArr;
        this.f1113b = i;
        this.f1114c = i2;
        this.f1115d = i3 | 64 | 16384;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return this.f1115d;
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2454f interfaceC2454f) {
        int i;
        Objects.requireNonNull(interfaceC2454f);
        double[] dArr = this.f1112a;
        int length = dArr.length;
        int i2 = this.f1114c;
        if (length < i2 || (i = this.f1113b) < 0) {
            return;
        }
        this.f1113b = i2;
        if (i < i2) {
            do {
                interfaceC2454f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        return this.f1114c - this.f1113b;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m625b(this, consumer);
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

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        int i = this.f1113b;
        if (i < 0 || i >= this.f1114c) {
            return false;
        }
        double[] dArr = this.f1112a;
        this.f1113b = i + 1;
        interfaceC2454f.accept(dArr[i]);
        return true;
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2488a trySplit() {
        int i = this.f1113b;
        int i2 = (this.f1114c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1112a;
        this.f1113b = i2;
        return new C2800z(dArr, i, i2, this.f1115d);
    }
}
