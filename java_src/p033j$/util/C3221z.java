package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3221z implements InterfaceC2908s.InterfaceC2909a {

    /* renamed from: a */
    private final double[] f1207a;

    /* renamed from: b */
    private int f1208b;

    /* renamed from: c */
    private final int f1209c;

    /* renamed from: d */
    private final int f1210d;

    public C3221z(double[] dArr, int i, int i2, int i3) {
        this.f1207a = dArr;
        this.f1208b = i;
        this.f1209c = i2;
        this.f1210d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return this.f1210d;
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2875f interfaceC2875f) {
        int i;
        Objects.requireNonNull(interfaceC2875f);
        double[] dArr = this.f1207a;
        int length = dArr.length;
        int i2 = this.f1209c;
        if (length < i2 || (i = this.f1208b) < 0) {
            return;
        }
        this.f1208b = i2;
        if (i < i2) {
            do {
                interfaceC2875f.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        return this.f1209c - this.f1208b;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
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

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        int i = this.f1208b;
        if (i < 0 || i >= this.f1209c) {
            return false;
        }
        double[] dArr = this.f1207a;
        this.f1208b = i + 1;
        interfaceC2875f.accept(dArr[i]);
        return true;
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public InterfaceC2908s.InterfaceC2909a trySplit() {
        int i = this.f1208b;
        int i2 = (this.f1209c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        double[] dArr = this.f1207a;
        this.f1208b = i2;
        return new C3221z(dArr, i, i2, this.f1210d);
    }
}
