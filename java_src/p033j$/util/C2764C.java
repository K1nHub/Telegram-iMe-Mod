package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2764C implements Spliterator.InterfaceC2772b {

    /* renamed from: a */
    private final int[] f667a;

    /* renamed from: b */
    private int f668b;

    /* renamed from: c */
    private final int f669c;

    /* renamed from: d */
    private final int f670d;

    public C2764C(int[] iArr, int i, int i2, int i3) {
        this.f667a = iArr;
        this.f668b = i;
        this.f669c = i2;
        this.f670d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2821l interfaceC2821l) {
        int i;
        Objects.requireNonNull(interfaceC2821l);
        int[] iArr = this.f667a;
        int length = iArr.length;
        int i2 = this.f669c;
        if (length < i2 || (i = this.f668b) < 0) {
            return;
        }
        this.f668b = i2;
        if (i < i2) {
            do {
                interfaceC2821l.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return this.f670d;
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        return this.f669c - this.f668b;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        int i = this.f668b;
        if (i < 0 || i >= this.f669c) {
            return false;
        }
        int[] iArr = this.f667a;
        this.f668b = i + 1;
        interfaceC2821l.accept(iArr[i]);
        return true;
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2838k.m604e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator.InterfaceC2772b trySplit() {
        int i = this.f668b;
        int i2 = (this.f669c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f667a;
        this.f668b = i2;
        return new C2764C(iArr, i, i2, this.f670d);
    }
}
