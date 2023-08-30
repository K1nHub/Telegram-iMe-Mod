package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3305z implements InterfaceC2992s.InterfaceC2993a {

    /* renamed from: a */
    private final double[] f1216a;

    /* renamed from: b */
    private int f1217b;

    /* renamed from: c */
    private final int f1218c;

    /* renamed from: d */
    private final int f1219d;

    public C3305z(double[] dArr, int i, int i2, int i3) {
        this.f1216a = dArr;
        this.f1217b = i;
        this.f1218c = i2;
        this.f1219d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return this.f1219d;
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2959f interfaceC2959f) {
        int i;
        Objects.requireNonNull(interfaceC2959f);
        double[] dArr = this.f1216a;
        int length = dArr.length;
        int i2 = this.f1218c;
        if (length < i2 || (i = this.f1217b) < 0) {
            return;
        }
        this.f1217b = i2;
        if (i < i2) {
            do {
                interfaceC2959f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        return this.f1218c - this.f1217b;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
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

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        int i = this.f1217b;
        if (i < 0 || i >= this.f1218c) {
            return false;
        }
        double[] dArr = this.f1216a;
        this.f1217b = i + 1;
        interfaceC2959f.accept(dArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2993a trySplit() {
        int i = this.f1217b;
        int i2 = (this.f1218c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1216a;
        this.f1217b = i2;
        return new C3305z(dArr, i, i2, this.f1219d);
    }
}
