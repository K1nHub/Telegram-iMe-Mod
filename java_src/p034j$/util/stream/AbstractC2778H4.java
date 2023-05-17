package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC3034t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2778H4 extends AbstractC2790J4 implements InterfaceC3034t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2778H4(InterfaceC3034t interfaceC3034t, long j, long j2) {
        super(interfaceC3034t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2778H4(InterfaceC3034t interfaceC3034t, AbstractC2778H4 abstractC2778H4) {
        super(interfaceC3034t, abstractC2778H4);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: forEachRemaining */
    public void m506e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2937j4 abstractC2937j4 = null;
        while (true) {
            int m498r = m498r();
            if (m498r == 1) {
                return;
            }
            if (m498r != 2) {
                ((InterfaceC3034t) this.f771a).forEachRemaining(obj);
                return;
            }
            if (abstractC2937j4 == null) {
                abstractC2937j4 = mo501t(128);
            } else {
                abstractC2937j4.f975b = 0;
            }
            long j = 0;
            while (((InterfaceC3034t) this.f771a).tryAdvance(abstractC2937j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2937j4.mo385b(obj, m500p(j));
        }
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo502s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2937j4 mo501t(int i);

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: tryAdvance */
    public boolean m503k(Object obj) {
        Objects.requireNonNull(obj);
        while (m498r() != 1 && ((InterfaceC3034t) this.f771a).tryAdvance(this)) {
            if (m500p(1L) == 1) {
                mo502s(obj);
                return true;
            }
        }
        return false;
    }
}
