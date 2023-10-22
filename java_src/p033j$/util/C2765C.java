package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2765C implements Spliterator.InterfaceC2773b {

    /* renamed from: a */
    private final int[] f667a;

    /* renamed from: b */
    private int f668b;

    /* renamed from: c */
    private final int f669c;

    /* renamed from: d */
    private final int f670d;

    public C2765C(int[] iArr, int i, int i2, int i3) {
        this.f667a = iArr;
        this.f668b = i;
        this.f669c = i2;
        this.f670d = i3 | 64 | 16384;
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2822l interfaceC2822l) {
        int i;
        Objects.requireNonNull(interfaceC2822l);
        int[] iArr = this.f667a;
        int length = iArr.length;
        int i2 = this.f669c;
        if (length < i2 || (i = this.f668b) < 0) {
            return;
        }
        this.f668b = i2;
        if (i < i2) {
            do {
                interfaceC2822l.accept(iArr[i]);
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

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        int i = this.f668b;
        if (i < 0 || i >= this.f669c) {
            return false;
        }
        int[] iArr = this.f667a;
        this.f668b = i + 1;
        interfaceC2822l.accept(iArr[i]);
        return true;
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2839k.m600e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator.InterfaceC2773b trySplit() {
        int i = this.f668b;
        int i2 = (this.f669c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        int[] iArr = this.f667a;
        this.f668b = i2;
        return new C2765C(iArr, i, i2, this.f670d);
    }
}
