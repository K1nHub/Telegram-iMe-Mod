package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2932t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2676H4 extends AbstractC2688J4 implements InterfaceC2932t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2676H4(InterfaceC2932t interfaceC2932t, long j, long j2) {
        super(interfaceC2932t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2676H4(InterfaceC2932t interfaceC2932t, AbstractC2676H4 abstractC2676H4) {
        super(interfaceC2932t, abstractC2676H4);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: forEachRemaining */
    public void m520e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2835j4 abstractC2835j4 = null;
        while (true) {
            int m512r = m512r();
            if (m512r == 1) {
                return;
            }
            if (m512r != 2) {
                ((InterfaceC2932t) this.f768a).forEachRemaining(obj);
                return;
            }
            if (abstractC2835j4 == null) {
                abstractC2835j4 = mo515t(128);
            } else {
                abstractC2835j4.f972b = 0;
            }
            long j = 0;
            while (((InterfaceC2932t) this.f768a).tryAdvance(abstractC2835j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2835j4.mo399b(obj, m514p(j));
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo516s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2835j4 mo515t(int i);

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: tryAdvance */
    public boolean m517k(Object obj) {
        Objects.requireNonNull(obj);
        while (m512r() != 1 && ((InterfaceC2932t) this.f768a).tryAdvance(this)) {
            if (m514p(1L) == 1) {
                mo516s(obj);
                return true;
            }
        }
        return false;
    }
}
