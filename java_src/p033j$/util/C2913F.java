package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
final class C2913F implements InterfaceC2992s.InterfaceC2994b {

    /* renamed from: a */
    private final int[] f644a;

    /* renamed from: b */
    private int f645b;

    /* renamed from: c */
    private final int f646c;

    /* renamed from: d */
    private final int f647d;

    public C2913F(int[] iArr, int i, int i2, int i3) {
        this.f644a = iArr;
        this.f645b = i;
        this.f646c = i2;
        this.f647d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2965l interfaceC2965l) {
        int i;
        Objects.requireNonNull(interfaceC2965l);
        int[] iArr = this.f644a;
        int length = iArr.length;
        int i2 = this.f646c;
        if (length < i2 || (i = this.f645b) < 0) {
            return;
        }
        this.f645b = i2;
        if (i < i2) {
            do {
                interfaceC2965l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return this.f647d;
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        return this.f646c - this.f645b;
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        int i = this.f645b;
        if (i < 0 || i >= this.f646c) {
            return false;
        }
        int[] iArr = this.f644a;
        this.f645b = i + 1;
        interfaceC2965l.accept(iArr[i]);
        return true;
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

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2994b trySplit() {
        int i = this.f645b;
        int i2 = (this.f646c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f644a;
        this.f645b = i2;
        return new C2913F(iArr, i, i2, this.f647d);
    }
}
