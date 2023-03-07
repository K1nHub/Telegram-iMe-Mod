package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2538H4 extends AbstractC2550J4 implements InterfaceC2794t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2538H4(InterfaceC2794t interfaceC2794t, long j, long j2) {
        super(interfaceC2794t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2538H4(InterfaceC2794t interfaceC2794t, AbstractC2538H4 abstractC2538H4) {
        super(interfaceC2794t, abstractC2538H4);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: forEachRemaining */
    public void m521e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2697j4 abstractC2697j4 = null;
        while (true) {
            int m513r = m513r();
            if (m513r == 1) {
                return;
            }
            if (m513r != 2) {
                ((InterfaceC2794t) this.f762a).forEachRemaining(obj);
                return;
            }
            if (abstractC2697j4 == null) {
                abstractC2697j4 = mo516t(128);
            } else {
                abstractC2697j4.f966b = 0;
            }
            long j = 0;
            while (((InterfaceC2794t) this.f762a).tryAdvance(abstractC2697j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2697j4.mo400b(obj, m515p(j));
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo517s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2697j4 mo516t(int i);

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: tryAdvance */
    public boolean m518k(Object obj) {
        Objects.requireNonNull(obj);
        while (m513r() != 1 && ((InterfaceC2794t) this.f762a).tryAdvance(this)) {
            if (m515p(1L) == 1) {
                mo517s(obj);
                return true;
            }
        }
        return false;
    }
}
