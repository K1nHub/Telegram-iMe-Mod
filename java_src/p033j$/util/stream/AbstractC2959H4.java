package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC3215t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2959H4 extends AbstractC2971J4 implements InterfaceC3215t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2959H4(InterfaceC3215t interfaceC3215t, long j, long j2) {
        super(interfaceC3215t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2959H4(InterfaceC3215t interfaceC3215t, AbstractC2959H4 abstractC2959H4) {
        super(interfaceC3215t, abstractC2959H4);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: forEachRemaining */
    public void m524e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3118j4 abstractC3118j4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r != 2) {
                ((InterfaceC3215t) this.f857a).forEachRemaining(obj);
                return;
            }
            if (abstractC3118j4 == null) {
                abstractC3118j4 = mo519t(128);
            } else {
                abstractC3118j4.f1061b = 0;
            }
            long j = 0;
            while (((InterfaceC3215t) this.f857a).tryAdvance(abstractC3118j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3118j4.mo403b(obj, m518p(j));
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
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

    /* renamed from: s */
    protected abstract void mo520s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3118j4 mo519t(int i);

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: tryAdvance */
    public boolean m521k(Object obj) {
        Objects.requireNonNull(obj);
        while (m516r() != 1 && ((InterfaceC3215t) this.f857a).tryAdvance(this)) {
            if (m518p(1L) == 1) {
                mo520s(obj);
                return true;
            }
        }
        return false;
    }
}
