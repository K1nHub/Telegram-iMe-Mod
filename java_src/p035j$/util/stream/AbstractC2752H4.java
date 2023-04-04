package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2752H4 extends AbstractC2764J4 implements InterfaceC3008t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2752H4(InterfaceC3008t interfaceC3008t, long j, long j2) {
        super(interfaceC3008t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2752H4(InterfaceC3008t interfaceC3008t, AbstractC2752H4 abstractC2752H4) {
        super(interfaceC3008t, abstractC2752H4);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: forEachRemaining */
    public void m515e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2911j4 abstractC2911j4 = null;
        while (true) {
            int m507r = m507r();
            if (m507r == 1) {
                return;
            }
            if (m507r != 2) {
                ((InterfaceC3008t) this.f773a).forEachRemaining(obj);
                return;
            }
            if (abstractC2911j4 == null) {
                abstractC2911j4 = mo510t(128);
            } else {
                abstractC2911j4.f977b = 0;
            }
            long j = 0;
            while (((InterfaceC3008t) this.f773a).tryAdvance(abstractC2911j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2911j4.mo394b(obj, m509p(j));
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo511s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2911j4 mo510t(int i);

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: tryAdvance */
    public boolean m512k(Object obj) {
        Objects.requireNonNull(obj);
        while (m507r() != 1 && ((InterfaceC3008t) this.f773a).tryAdvance(this)) {
            if (m509p(1L) == 1) {
                mo511s(obj);
                return true;
            }
        }
        return false;
    }
}
