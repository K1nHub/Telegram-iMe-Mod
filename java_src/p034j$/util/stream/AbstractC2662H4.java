package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2918t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2662H4 extends AbstractC2674J4 implements InterfaceC2918t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2662H4(InterfaceC2918t interfaceC2918t, long j, long j2) {
        super(interfaceC2918t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2662H4(InterfaceC2918t interfaceC2918t, AbstractC2662H4 abstractC2662H4) {
        super(interfaceC2918t, abstractC2662H4);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: forEachRemaining */
    public void m521e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2821j4 abstractC2821j4 = null;
        while (true) {
            int m513r = m513r();
            if (m513r == 1) {
                return;
            }
            if (m513r != 2) {
                ((InterfaceC2918t) this.f767a).forEachRemaining(obj);
                return;
            }
            if (abstractC2821j4 == null) {
                abstractC2821j4 = mo516t(128);
            } else {
                abstractC2821j4.f971b = 0;
            }
            long j = 0;
            while (((InterfaceC2918t) this.f767a).tryAdvance(abstractC2821j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2821j4.mo400b(obj, m515p(j));
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo517s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2821j4 mo516t(int i);

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: tryAdvance */
    public boolean m518k(Object obj) {
        Objects.requireNonNull(obj);
        while (m513r() != 1 && ((InterfaceC2918t) this.f767a).tryAdvance(this)) {
            if (m515p(1L) == 1) {
                mo517s(obj);
                return true;
            }
        }
        return false;
    }
}
