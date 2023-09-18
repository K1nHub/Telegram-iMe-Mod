package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2829F implements InterfaceC2908s.InterfaceC2910b {

    /* renamed from: a */
    private final int[] f635a;

    /* renamed from: b */
    private int f636b;

    /* renamed from: c */
    private final int f637c;

    /* renamed from: d */
    private final int f638d;

    public C2829F(int[] iArr, int i, int i2, int i3) {
        this.f635a = iArr;
        this.f636b = i;
        this.f637c = i2;
        this.f638d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2881l interfaceC2881l) {
        int i;
        Objects.requireNonNull(interfaceC2881l);
        int[] iArr = this.f635a;
        int length = iArr.length;
        int i2 = this.f637c;
        if (length < i2 || (i = this.f636b) < 0) {
            return;
        }
        this.f636b = i2;
        if (i < i2) {
            do {
                interfaceC2881l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return this.f638d;
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        return this.f637c - this.f636b;
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        int i = this.f636b;
        if (i < 0 || i >= this.f637c) {
            return false;
        }
        int[] iArr = this.f635a;
        this.f636b = i + 1;
        interfaceC2881l.accept(iArr[i]);
        return true;
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

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public InterfaceC2908s.InterfaceC2910b trySplit() {
        int i = this.f636b;
        int i2 = (this.f637c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f635a;
        this.f636b = i2;
        return new C2829F(iArr, i, i2, this.f638d);
    }
}
