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
    protected abstract Object mo271f();

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: forEachRemaining */
    public void m272e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f801a;
        long j2 = this.f805e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f804d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3160t) this.f803c).estimateSize() + j3 <= this.f802b) {
            ((InterfaceC3160t) this.f803c).forEachRemaining(obj);
            this.f804d = this.f805e;
            return;
        }
        while (this.f801a > this.f804d) {
            ((InterfaceC3160t) this.f803c).tryAdvance(mo271f());
            this.f804d++;
        }
        while (this.f804d < this.f805e) {
            ((InterfaceC3160t) this.f803c).tryAdvance(obj);
            this.f804d++;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: tryAdvance */
    public boolean m268k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f801a >= this.f805e) {
            return false;
        }
        while (true) {
            long j2 = this.f801a;
            j = this.f804d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3160t) this.f803c).tryAdvance(mo271f());
            this.f804d++;
        }
        if (j >= this.f805e) {
            return false;
        }
        this.f804d = j + 1;
        return ((InterfaceC3160t) this.f803c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3159z4(InterfaceC3160t interfaceC3160t, long j, long j2, long j3, long j4, AbstractC3090o1 abstractC3090o1) {
        super(interfaceC3160t, j, j2, j3, j4);
    }
}
