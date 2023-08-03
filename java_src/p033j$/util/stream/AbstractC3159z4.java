package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC3160t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3159z4 extends AbstractC2880D4 implements InterfaceC3160t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3159z4(InterfaceC3160t interfaceC3160t, long j, long j2) {
        super(interfaceC3160t, j, j2, 0L, Math.min(interfaceC3160t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo289f();

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: forEachRemaining */
    public void m290e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f804a;
        long j2 = this.f808e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f807d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3160t) this.f806c).estimateSize() + j3 <= this.f805b) {
            ((InterfaceC3160t) this.f806c).forEachRemaining(obj);
            this.f807d = this.f808e;
            return;
        }
        while (this.f804a > this.f807d) {
            ((InterfaceC3160t) this.f806c).tryAdvance(mo289f());
            this.f807d++;
        }
        while (this.f807d < this.f808e) {
            ((InterfaceC3160t) this.f806c).tryAdvance(obj);
            this.f807d++;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: tryAdvance */
    public boolean m286k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f804a >= this.f808e) {
            return false;
        }
        while (true) {
            long j2 = this.f804a;
            j = this.f807d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3160t) this.f806c).tryAdvance(mo289f());
            this.f807d++;
        }
        if (j >= this.f808e) {
            return false;
        }
        this.f807d = j + 1;
        return ((InterfaceC3160t) this.f806c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3159z4(InterfaceC3160t interfaceC3160t, long j, long j2, long j3, long j4, AbstractC3090o1 abstractC3090o1) {
        super(interfaceC3160t, j, j2, j3, j4);
    }
}
